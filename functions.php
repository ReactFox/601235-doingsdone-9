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