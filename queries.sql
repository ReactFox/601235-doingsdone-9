USE doingsdone_db;

#Добавляет список проектов

INSERT INTO projects(project)
VALUES ('Входящие'),
       ('Учеба'),
       ('Работа'),
       ('Домашние дела'),
       ('Авто');

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


#Добавляет список проктов каждый автор

INSERT INTO projects(project, author_id)
VALUES ('Входящие', 1),
       ('Учеба',1),
       ('Работа',1),
       ('Домашние дела', 1),
       ('Входящие', 2),
       ('Учеба',2),
       ('Работа',2),
       ('Домашние дела', 2);

# получает список из всех проектов для одного пользователя. Объединяет проекты с задачами,
# чтобы посчитать количество задач в каждом проекте и в дальнейшем выводить эту цифру рядом с именем проекта;

SELECT user_name
FROM users u
         JOIN  projects pj ON pj.author_id = u.id
         JOIN tasks ts ON ts.author_id = pj.author_id ;



# GROUP BY project