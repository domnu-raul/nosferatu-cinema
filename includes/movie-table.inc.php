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
        <tr id="header-row">
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

        $entries_per_page = 20;
        $page_num = isset($_GET['page']) ? $_GET['page'] : 1;
        $offset = ($page_num - 1) * $entries_per_page;

        $search_query = "";
        if (isset($_GET['search'])) {
            $search_string = urldecode($_GET['search']);
            $search_query = "WHERE LOWER(title) LIKE LOWER('%{$search_string}%')";
        }
        $sort_query = isset($_GET['sort']) ? "ORDER BY {$_GET['sort']}" : "";

        $sql = "SELECT * FROM films {$search_query} {$sort_query}
                LIMIT {$offset}, {$entries_per_page}";
        $result = $conn->query($sql);

        $sql = "SELECT COUNT(*) as total from films {$search_query}";
        $total_results = $conn->query($sql)->fetch_assoc()['total'];

        for ($i = 0; $row = $result->fetch_assoc(); $i++) {
            $odd_even = $i % 2 == 0 ? 'even-row' : 'odd-row';
            echo "<tr data-id=\"{$row['id']}\" class=\"{$odd_even}\">";
            echo "<td class=\"delete-column\"><button onclick=\"delete_movie(this)\">
                  <img src=\"assets/delete-icon.png\" class=\"delete-icon\"></button></td>";
            echo "<td>{$row['id']}</td>";
            echo "<td>{$row['title']}</td>";
            echo "<td>{$row['director']}</td>";
            echo "<td>{$row['duration']}</td>";
            echo "<td class=\"poster-column\"
                  onclick=\"redirect_URL('https://www.themoviedb.org/movie/{$row['id']}')\"
                  style=\"cursor: pointer;\">
                  <img class=\"poster-img\" src=\"{$row['poster_url']}\"></td>";
            echo "</tr>";
        }
        $conn->close()
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