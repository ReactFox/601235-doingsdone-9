<?php
require_once("helpers.php");
require_once("data.php");
require_once("init.php");
require_once("functions.php");

if (!$link) {
    $error = mysqli_connect_error();
    echo "<h2>$error</h2>";
    exit;
} else {
    // получает список проектов
    $get_sql_user_projects = "SELECT * FROM projects WHERE author_id = 1";
    $projects = get_mysql_selection_result($link, $get_sql_user_projects);

    //получает список задач
    $get_sql_user_tasks = "SELECT * FROM tasks WHERE author_id = 1";
    $tasks = get_mysql_selection_result($link, $get_sql_user_tasks);

    //    для теста
//    echo "<pre>";
//    print_r($tasks);
//    echo "</pre>";
}


$content = include_template("index.php", [
    "tasks" => $tasks,
    "show_complete_tasks" => $show_complete_tasks,
    "get_diff_time" => $get_diff_time
]);

$layout = include_template("layout.php", [
    "content" => $content,
    "tasks" => $tasks,
    "projects" => $projects,
    "page_title" => $page_title
]);

print ($layout);