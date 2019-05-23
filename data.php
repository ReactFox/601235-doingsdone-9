<?php
date_default_timezone_set("Europe/Moscow");
setlocale(LC_ALL, 'ru_RU');

// показывать или нет выполненные задачи
$show_complete_tasks = rand(0, 1);

// заголовок страницы
$page_title = 'Дела в порядке';

// массив проекты
$projects = [
    "Входящие",
    "Учеба",
    "Работа",
    "Домашние дела",
    "Авто"
];

// массив с задачами
$tasks = [
    [
        'task' => 'Собеседование в IT компании',
        'date_of_completion' => '22.05.2019',
        'category' => $projects[2],
        'done' => 0
    ],
    [
        'task' => 'Выполнить тестовое задание',
        'date_of_completion' => '25.12.2018',
        'category' => $projects[2],
        'done' => 0
    ],
    [
        'task' => 'Сделать задание первого раздела',
        'date_of_completion' => '21.12.2018',
        'category' => $projects[1],
        'done' => 1
    ],
    [
        'task' => 'Встреча с другом',
        'date_of_completion' => '22.12.2018',
        'category' => $projects[0],
        'done' => 0
    ],
    [
        'task' => 'Купить корм для кота',
        'date_of_completion' => 0,
        'category' => $projects[3],
        'done' => 0
    ],
    [
        'task' => 'Заказать пиццу',
        'date_of_completion' => 0,
        'category' => $projects[3],
        'done' => 0
    ]
];