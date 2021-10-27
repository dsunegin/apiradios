CREATE DATABASE radio CHARACTER SET utf8 COLLATE utf8_general_ci;
create user radio_user@localhost;
set password for radio_user@localhost=password('psw_radio_user');
grant all on radio.* to radio_user@localhost with grant option;

use radio;

CREATE TABLE cartoon (
id INT(7) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
alias VARCHAR(255) NOT NULL,
video TEXT,
youtube_channel TEXT,
published INT(1) UNSIGNED DEFAULT 0,
created DATETIME DEFAULT  CURRENT_TIMESTAMP,
publish_up DATETIME,
image TEXT,
description TEXT
);


