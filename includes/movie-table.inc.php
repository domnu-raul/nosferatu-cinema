<script>
    $(`a[name='movies-table-btn'`).attr("id", "active-table");
</script>
<table>
    <thead>
    <tr id="form-row">
        <th colspan="6">
            <div id="form-container">
                <p id="error-msg"></p>
                <form id="add-form" onsubmit="return add_movie()">
                    <input type="text" name="id" id="id-field" placeholder="Enter a movie's TMDB id..." required>
                    <button type="submit">Add</button>
                </form>
                <form id="search-form" onsubmit="search(); return false">
                    <input type="text" id="search-field" name="movie-title" placeholder="Search movie by title...">
                    <button type="submit">Search</button>
                    <div class="dropdown">
                        <button type="button" id="dropbtn" onclick="toggle_dropdown()">Sort <span id="arrow">⏴</span></button>
                        <div id="dropdown-content">
                            <button type="button" onclick="sort('title')">Title</button>
                            <button type="button" onclick="sort('duration')">Runtime</button>
                            <button type="button" onclick="sort('id')">ID</button>
                        </div>
                    </div>
                </form>
            </div>
        </th>
    </tr>
    <tr class="odd-row">
        <td class="delete-column"></td>
        <td>ID</td>
        <td>Title</td>
        <td>Director</td>
        <td>Runtime</td>
        <td class="poster-column">Poster</td>
    </tr>
    </thead>
    <tbody>
        <?php
        include("database.inc.php");

        $count = 20;
        $page = isset($_GET['page']) ? $_GET['page'] : 1;
        $start = ($page - 1) * $count;

        $sql = "SELECT * FROM films";
        if (isset($_GET['search']))
        {
            $search_string = urldecode($_GET['search']);
            $sql = "{$sql} WHERE LOWER(title) LIKE LOWER('%{$search_string}%')";
        }

        if (isset($_GET['sort']))
            $sql = "{$sql} ORDER BY {$_GET['sort']}";

        $result = mysqli_query($conn, $sql);
        $row_count = mysqli_num_rows($result);

        $i = 0;
        $start_index = 0;

        while ($start_index < $start)
        {
            $start_index++;
            if ($row = mysqli_fetch_assoc($result)) continue;
            else break;
        }

        while ($row = mysqli_fetch_assoc($result) and $i < $count)
        {
            $odd_even = $i % 2 == 0 ? 'even-row' : 'odd-row';
            echo "<tr data-id=\"{$row['id']}\" class=\"{$odd_even}\">";
            echo "<td class=\"delete-column\"><button onclick=\"delete_movie(this)\"><img src=\"assets/delete-icon.png\" class=\"delete-icon\"></button></td>";
            echo "<td>{$row['id']}</td>";
            echo "<td>{$row['title']}</td>";
            echo "<td>{$row['director']}</td>";
            echo "<td>{$row['duration']}</td>";
            echo "<td class=\"poster-column\"><img class=\"poster-img\" src=\"{$row['poster_url']}\"></td>";
            echo "</tr>";
            $i++;
        }
        mysqli_close($conn);
        ?>
    </tbody>
</table>
<div class="table-pagination">
    <?php
    include ('includes/database.inc.php');
    $curr_page_count = isset($_GET['page']) ? $_GET['page'] : 1;

    $page_count = $row_count / $count;
    if ($page_count < 1) $page_count = 1;
    $i = 1;
    while ($i <= $page_count)
    {
        echo "<button onclick=\"set_page({$i})\"" . $i . '"';
        if ($i == $curr_page_count) echo ' id="active-page"';
        echo '>'. $i . '</button>';
        $i++;
    }
    ?>
</div>