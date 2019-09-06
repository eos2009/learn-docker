DROP DATABASE IF EXISTS docker;
CREATE DATABASE docker CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE docker;


CREATE TABLE user
(
    id           INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    created      TIMESTAMP NOT NULL DEFAULT current_timestamp,
    modified     TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    username     VARCHAR(45)     NOT NULL UNIQUE,
    password_md5 VARCHAR(45)     NOT NULL,
    email        VARCHAR(45),
    screen_name  VARCHAR(45),
    logged       TIMESTAMP       NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;



INSERT INTO user (username, password_md5, email, screen_name)
VALUES ('docker', '3e6693e83d186225b85b09e71c974d2d', '', 'admin');

