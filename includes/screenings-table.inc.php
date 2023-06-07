<link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/themes/dark.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script>
    $(`a[name='screenings-table-btn'`).attr("id", "active-table");
</script>
<style>
    #id-field {
        width: 1fr !important;
        margin-right: 5px;
    }

    #date-field {
        width: .8fr !important;
        margin-right: 5px;
    }

    #time-field {
        width: .6fr !important;
    }

    #search-form input {
        width: max(100%, 140px);
    }

    #add-form button {
        width: 120px;
    }

    #add-form input {
        width: max(100%, 70px);
    }
</style>
<table>
    <thead>
        <tr id="form-row">
            <th colspan="7">
                <div id="form-container">
                    <p id="error-msg"></p>
                    <form onsubmit="return add_screening()" id="add-form">
                        <input type="text" name="id" id="id-field" placeholder="Enter movie ID..." required>
                        <input type="text" name="date" id="date-field" placeholder="Select date" required>
                        <input type="text" name="time" id="time-field" placeholder="Select time" required>
                        <script>
                            flatpickr("#date-field", {
                                dateFormat: "Y-m-d",
                                minDate: "today"
                            });
                            flatpickr("#time-field", {
                                enableTime: true,
                                noCalendar: true,
                                dateFormat: "H:i",
                                minTime: "09:00",
                                maxTime: "21:00"
                            });
                        </script>
                        <button type="submit">Add</button>
                    </form>
                    <form id="search-form" onsubmit="search(); return false">
                        <input type="text" name="movie-title" id="search-field" placeholder="Search by movie title...">
                        <button type="submit">Search</button>
                        <div class="dropdown">
                            <button type="button" id="dropbtn" onclick="toggle_dropdown()">Sort <span id="arrow">⏴</span></button>
                            <div id="dropdown-content">
                                <button type="button" onclick="sort('title')">Title</button>
                                <button type="button" onclick="sort('duration')">Runtime</button>
                                <button type="button" onclick="sort('screening_date, screening_time')">Earliest</button>
                                <button type="button" onclick="sort('screening_date DESC, screening_time DESC')">Latest</button>
                            </div>
                    </form>
                </div>
            </th>
        </tr>
        <tr id="header-row">
            <td class="delete-column"></td>
            <td>ID</td>
            <td>Movie ID</td>
            <td>Movie Title</td>
            <td>Date</td>
            <td>Time</td>
            <td class="poster-column">Poster</td>
        </tr>
    </thead>
    <tbody>
        <?php
        include("database.inc.php");

        $entries_per_page = 20;
        $page_num = isset($_GET['page']) ? $_GET['page'] : 1;
        $offset = ($page_num - 1) * $entries_per_page;

        $search_query = "";
        $sort_term = "";
        if (isset($_GET['search'])) {
            $search_string = urldecode($_GET['search']);
            $search_query = "WHERE m.title LIKE LOWER('%{$search_string}%')";
        }

        if (isset($_GET['sort']))
            $sort_term = urldecode($_GET['sort']);
        else
            $sort_term = 'screening_date DESC, screening_time DESC';

        $sql = "SELECT s.id, s.movie_id, m.title, s.screening_date, s.screening_time, m.poster_url, m.duration
                FROM screenings s
                INNER JOIN films m ON s.movie_id = m.id {$search_query}
                ORDER BY {$sort_term}
                LIMIT {$offset}, {$entries_per_page}";
        $result = $conn->query($sql);

        $sql = "SELECT COUNT(s.movie_id) as total FROM screenings s
                INNER JOIN films m ON s.movie_id = m.id {$search_query}";
        $total_results = $conn->query($sql)->fetch_assoc()['total'];

        for ($i = 0; $row = $result->fetch_assoc(); $i++) {
            $formatted_date = date("F j", strtotime($row['screening_date']));
            $formatted_time = date("g:i A", strtotime($row['screening_time']));

            $odd_even = $i % 2 == 0 ? 'even-row' : 'odd-row';
            echo "<tr data-id=\"{$row['id']}\" class=\"{$odd_even}\">";
            echo "<td class=\"delete-column\"><button onclick=\"delete_screening(this)\">
                  <img src=\"assets/delete-icon.png\" class=\"delete-icon\"></button></td>";
            echo "<td>{$row['id']}</td>";
            echo "<td>{$row['movie_id']}</td>";
            echo "<td>{$row['title']}</td>";
            echo "<td>{$formatted_date}</td>";
            echo "<td>{$formatted_time}</td>";
            echo "<td class=\"poster-column\"
                  onclick=\"redirect_URL('https://www.themoviedb.org/movie/{$row['movie_id']}')\"
                  style=\"cursor: pointer;\">
                  <img class=\"poster-img\" src=\"{$row['poster_url']}\"></td>";
            echo "</tr>";
        }
        $conn->close();
        ?>
    </tbody>
</table>
<div class="table-pagination">
    <?php
    $page_count = $total_results / $entries_per_page;
    $page_count = $page_count >= 1 ? $page_count : 1;

    for ($i = 1; $i <= $page_count; $i++) {
        $active = $i == $page_num ? "id=\"active-page\"" : "";
        echo "<button onclick=\"set_page({$i})\" {$active}>{$i}</button>";
    }
    ?>
</div>