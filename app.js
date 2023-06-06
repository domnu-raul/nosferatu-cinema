var script = document.createElement('script');
script.src = 'https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js';
document.head.appendChild(script);

function toggle_dropdown() {
    let dropdown_content = document.getElementById('dropdown-content');
    let drop_button = document.getElementById('dropbtn');
    let arrow = document.getElementById('arrow');

    if (dropdown_content.style.display === 'grid')
    {
        dropdown_content.style.display = 'none';

        drop_button.style.backgroundColor = 'var(--second-bg-color)';
        drop_button.style.color = 'var(--text-color)';
        arrow.innerHTML = '⏴';
    }
    else
    {
        dropdown_content.style.display = 'grid';
        dropdown_content.style.gridTemplateColumns = '1fr';
        drop_button.style.backgroundColor = 'var(--text-color)';
        drop_button.style.color = 'var(--second-bg-color)';
        arrow.innerHTML = '⏷';
    }
}

function set_active(button_name) {
    $(`li[name='${button_name}'`).attr("id", "active");
}

function search() {
    let current_url = new URL(window.location.href);
    let search_input = document.getElementById('search-field');
    let search_text = search_input.value;
  
    current_url.searchParams.set('search', encodeURIComponent(search_text));
    current_url.searchParams.delete('page');
    window.location.href = current_url.href;
  }

function set_page(num) {
    let current_url = new URL(window.location.href);
    current_url.searchParams.set('page', num);
    window.location.href = current_url.href;
}
  
function sort(key) {
    let current_url = new URL(window.location.href);
    current_url.searchParams.set('sort', key);
    current_url.searchParams.delete('page');
    window.location.href = current_url.href;
}

function delete_screening(button) {
    let row = $(button).closest('tr');
    let entry_id = row.attr('data-id');
    let column_count = row.children().length;

    let title = row.children().eq(3).html();
    let date = row.children().eq(4).html();
    let time = row.children().eq(5).html();

    $.ajax({
        url: 'functions/delete-screening.script.php',
        method: 'POST',
        data: { id: entry_id },
        success: function(response) {
            console.log(response);
            if (response === 'success') {
              row.empty();
              row.append(`<td colspan=${column_count} class="removed-row">Screening ${entry_id} deleted: ${title} on ${date} at ${time}</td>`);
            }
        }
    });
}

function add_screening() {
    let id_element = $('#id-field');
    let date_element = $('#date-field');
    let time_element = $('#time-field');
    let error_element = $('#error-msg');

    let id_val = id_element.val();
    let date_val = date_element.val();
    let time_val = time_element.val();

    id_element.val('');
    date_element.val('');
    time_element.val('');

    $.ajax(
        {
            url: 'functions/add-screening.script.php',
            method: 'POST',
            data : {id : id_val, date : date_val, time : time_val},
            success: function(response) {
                if (response == 'error')
                {
                    error_element.html('Invalid Movie ID.');
                }
                else
                {
                    let tbody_rows = $('tbody tr');

                    tbody_rows.filter(':even').toggleClass('odd-row even-row');
                    tbody_rows.filter(':odd').toggleClass('even-row odd-row');

                    let split_response = response.split(';');
                    let id_col = split_response[0];
                    let movie_id_col = split_response[1];
                    let title_col = split_response[2];
                    let date_col = split_response[3];
                    let time_col = split_response[4];
                    let poster_col = split_response[5];

                    let new_row = $('<tr>').attr('data-id', id_col).addClass('even-row');
                    new_row.append('<td class="delete-column"><button onclick="delete_screening(this)"><img src="assets/delete-icon.png" class="delete-icon"></button></td>');
                    new_row.append('<td>' + id_col + '</td>');
                    new_row.append('<td>' + movie_id_col + '</td>');
                    new_row.append('<td>' + title_col + '</td>');
                    new_row.append('<td>' + date_col + '</td>');
                    new_row.append('<td>' + time_col + '</td>');
                    new_row.append('<td class="poster-column"><img class="poster-img" src="' + poster_col + '"></td>');

                    $('tbody').prepend(new_row);

                    error_element.html('');
                }
            }
        }
    )
    return false;
}

function delete_movie(button) {
    let row = $(button).closest('tr');
    let entry_id = row.attr('data-id');
    let column_count = row.children().length;
    let title = row.children().eq(2).html();

    $.ajax({
        url: 'functions/delete-movie.script.php',
        method: 'POST',
        data: { id: entry_id },
        success: function(response) {
            console.log(response);
            if (response !== 'error') {
              row.empty();
              row.append(`<td colspan=${column_count} class="removed-row">${title} removed.</td>`);
            }
        }
    });
}

function add_movie() {
    let id_element = $('#id-field');
    let error_element = $('#error-msg');

    let id_val = id_element.val();

    id_element.val('');

    $.ajax(
        {
            url: 'functions/add-movie.script.php',
            method: 'POST',
            data : {id : id_val},
            success: function(response) {
                let split_response = response.split(';');
                if (split_response[0] == 'error')
                {
                    error_element.html(split_response[1]);
                }
                else
                {
                    let tbody_rows = $('tbody tr');

                    tbody_rows.filter(':even').toggleClass('odd-row even-row');
                    tbody_rows.filter(':odd').toggleClass('even-row odd-row');

                    let id_col = split_response[0];
                    let title_col = split_response[1];
                    let director_col = split_response[2];
                    let runtime_col = split_response[3];
                    let poster_col = split_response[4];

                    let new_row = $('<tr>').attr('data-id', id_col).addClass('even-row');
                    new_row.append('<td class="delete-column"><button onclick="delete_movie(this)"><img src="assets/delete-icon.png" class="delete-icon"></button></td>');
                    new_row.append('<td>' + id_col + '</td>');
                    new_row.append('<td>' + title_col + '</td>');
                    new_row.append('<td>' + director_col + '</td>');
                    new_row.append('<td>' + runtime_col + '</td>');
                    new_row.append('<td class="poster-column"><img class="poster-img" src="' + poster_col + '"></td>');

                    $('tbody').prepend(new_row);

                    error_element.html('');
                }
            }
        }
    )
    return false;
}