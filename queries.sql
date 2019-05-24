USE doingsdone_db;

#Добавляет список проектов
#
# INSERT INTO projects(project)
# VALUES ('Входящие'),
#        ('Учеба'),
#        ('Работа'),
#        ('Домашние дела'),
#        ('Авто');

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
    `date_of_completion` = '24.05.2019',
    `author_id`          = 1,
    `project_id`         = 3;

INSERT INTO tasks
SET `date_creation`      = NOW(),
    `done`               = 0,
    `task`               = 'Выполнить тестовое задание',
    `date_of_completion` = '25.12.2018',
    `author_id`          = 2,
    `project_id`         = 3;

INSERT INTO tasks
SET `date_creation`      = NOW(),
    `done`               = 1,
    `task`               = 'Сделать задание первого раздела',
    `date_of_completion` = '21.12.2018',
    `author_id`          = 1,
    `project_id`         = 2;

INSERT INTO tasks
SET `date_creation`      = NOW(),
    `done`               = 0,
    `task`               = 'Встреча с другом',
    `date_of_completion` = '22.12.2018',
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
# Вот что получается http://joxi.ru/RmzLglWcYwZ6jA
# Вопрос: возращается результат для каждого проекта по 4 раза
#  Этот кусок кода закоментирую

# SELECT user_name, task, project
# FROM users u
#          JOIN tasks ts ON u.id = ts.author_id
#          JOIN projects pj ON pj.author_id = ts.author_id
# WHERE u.id = 1;


# получает список из всех проектов для одного пользователя
SELECT user_name, project
FROM users u
         JOIN projects pj ON pj.author_id = u.id
WHERE u.id = 1;

# # считает количество задач
# SELECT pj.id, COUNT(project)
# FROM projects pj
#          JOIN tasks ts ON pj.id = ts.project_id
# GROUP BY project;



