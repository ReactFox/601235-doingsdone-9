USE doingsdone_db;

#Добавляет список проктов с авторами
INSERT INTO projects(project, author_id)
VALUES ('Входящие', 1),
       ('Учеба', 1),
       ('Работа', 1),
       ('Домашние дела', 1),
       ('Работа', 2),
       ('Домашние дела', 2);

# Добавляет пару пользователей;

INSERT INTO users
SET `dt_reg`    = NOW(),
    `email`     = 'ivan.ivanov@gmail.com',
    `user_name` = 'Иван',
    `pass`      = 'secret1';

INSERT INTO users
SET `dt_reg`    = NOW(),
    `email`     = 'boris.borisov@gmail.com',
    `user_name` = 'Борис',
    `pass`      = 'secret2';

#Добавлет список задач

INSERT INTO tasks
SET `date_creation`      = NOW(),
    `done`               = 0,
    `task`               = 'Собеседование в IT компании',
    `date_of_completion` = '2019.05.24',
    `author_id`          = 1,
    `project_id`         = 3;

INSERT INTO tasks
SET `date_creation`      = NOW(),
    `done`               = 0,
    `task`               = 'Выполнить тестовое задание',
    `date_of_completion` = '2018.12.25',
    `author_id`          = 2,
    `project_id`         = 3;

INSERT INTO tasks
SET `date_creation`      = NOW(),
    `done`               = 1,
    `task`               = 'Сделать задание первого раздела',
    `date_of_completion` = '2018.12.21',
    `author_id`          = 1,
    `project_id`         = 2;

INSERT INTO tasks
SET `date_creation`      = NOW(),
    `done`               = 0,
    `task`               = 'Встреча с другом',
    `date_of_completion` = '2018.12.29',
    `author_id`          = 1,
    `project_id`         = 1;

INSERT INTO tasks
SET `date_creation` = NOW(),
    `done`          = 0,
    `task`          = 'Купить корм для кота',
    `author_id`     = 2,
    `project_id`    = 4;

INSERT INTO tasks
SET `date_creation` = NOW(),
    `done`          = 0,
    `task`          = 'Заказать пиццу',
    `author_id`     = 1,
    `project_id`    = 4;


# получает список из всех проектов для одного пользователя. Объединяет проекты с задачами,
# чтобы посчитать количество задач в каждом проекте и в дальнейшем выводить эту цифру рядом с именем проекта;

SELECT *
FROM tasks t
         JOIN projects p ON p.id = t.project_id
WHERE t.author_id = 2;


# получает список из всех проектов для одного проекта
SELECT *
FROM tasks
WHERE project_id = 1;

# помечает задачу как выполненую
UPDATE tasks
SET done = 1
WHERE id = 1;

# обновляет название задачи по её идентификатору
UPDATE tasks
SET task = 'Новое название задачи'
WHERE id = 4;


