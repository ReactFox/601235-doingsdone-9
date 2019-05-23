<?php
require_once("helpers.php");
require_once("data.php");
require_once("functions.php");

// Функция для получения кол-ва задач в категории проекты


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