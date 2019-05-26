CREATE DATABASE doingsdone_db
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE UTF8_GENERAL_CI;

USE doingsdone_db;

CREATE TABLE projects
(
    id        INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    project   CHAR(20)         NOT NULL,
    author_id INT(11) UNSIGNED NOT NULL
);

CREATE TABLE tasks
(
    id                 INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    date_creation      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    done               SMALLINT(1) UNSIGNED NOT NULL,
    task               CHAR(128)            NOT NULL,
    link               CHAR(128),
    date_of_completion TIMESTAMP            NULL,
    author_id          INT(11) UNSIGNED     NOT NULL,
    project_id         INT(11) UNSIGNED     NOT NULL,
    FULLTEXT (task)
);

CREATE TABLE users
(
    id        INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    dt_reg    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email     CHAR(30) NOT NULL UNIQUE,
    user_name CHAR(64) NOT NULL,
    pass      CHAR(64) NOT NULL
);