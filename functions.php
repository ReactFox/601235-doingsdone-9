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

/**
 * возвращает класс для разметки CSS 'task--important' если до окончания срока выполнения задачи остаётся меншьше 24 часов
 *
 * @param array $task_time принимает время выполнения задачи
 * @return string возвращает класс 'task--important'
 */

function get_diff_time($task_time)
{
    $current_task_time = strtotime($task_time);
    $time_midnight = strtotime("tomorrow");
    $date_differensce = $time_midnight - $current_task_time;

    if ($date_differensce <= 86400) {
        return 'task--important';
    }
}

/**
 * устанавливает соеденение и получает данные из БД,
 * в случае ошибки соеденеия возращает ошибку и показывает её на экране.
 *
 * @param array $con принимает ресурс соеденения
 * @param string $sql принимает SQL запрос к получению информации из БД
 * @return array возвращает результаты обращения к БД ввиде двумерного массива
 */

function get_mysql_selection_result($con, $sql)
{
    $result = mysqli_query($con, $sql);
    if (!$result) {
        $error = mysqli_error($con);
        print ("Ошибка MySQL: " . $error);
    } else {
        return mysqli_fetch_all($result, MYSQLI_ASSOC);
    }
}