<?php

/**
 * Возвращает колличество задач в каждой категории проектов
 *
 * @param array $tasks принимает список задач
 * @param $projects принимает список проектов
 * @return number count_category возращает число задач в категории
 */
function get_count_task($tasks, $projects)
{
    $count_category = 0;
    foreach ($tasks as $value) {
        if ($value['category'] === $projects) {
            $count_category++;
        };
    }
    return $count_category;
}

function get_diff_time($task_time)
{
    $current_task_time = strtotime($task_time);
    $time_midnight = strtotime("tomorrow");
    $date_differensce = $time_midnight - $current_task_time;

    if ($date_differensce <= 86400) {
        return 'task--important';
    }
}
