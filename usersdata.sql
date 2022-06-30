CREATE database SESSION_DATABASE;
USE SESSION_DATABASE;
CREATE table SESSION_TABLE(
userName varchar(255),
password varchar(255),
created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
session_id int NOT NULL PRIMARY KEY,
session_validity datetime NOT NULL
);

# INSERT INTO SESSION_DATABASE.SESSION_TABLE(userName,password,created_at,session_id,session_validate) VALUES ('Aiswarya','Ais@123',111);
INSERT INTO `SESSION_DATABASE`.`SESSION_TABLE` (`userName`, `password`, `session_id`) VALUES ('Aiswarya', 'Ais@123',  '1');
INSERT INTO `SESSION_DATABASE`.`SESSION_TABLE` (`userName`, `password`,  `session_id`) VALUES ('Vinitha', 'Vin@123', '2');
INSERT INTO `SESSION_DATABASE`.`SESSION_TABLE` (`userName`, `password`,  `session_id`) VALUES ('Vishal', 'Vis@123','3');
INSERT INTO `SESSION_DATABASE`.`SESSION_TABLE` (`userName`, `password`, `session_id`) VALUES ('Sathish', 'Sat@123','4');
INSERT INTO `SESSION_DATABASE`.`SESSION_TABLE` (`userName`, `password`,  `session_id`) VALUES ('Boopathi', 'Boo@123', '5');

SELECT * FROM SESSION_DATABASE.SESSION_TABLE;
ALTER TABLE SESSION_TABLE
ADD encrypted_password varchar(255);
UPDATE SESSION_DATABASE.SESSION_TABLE SET encrypted_password = MD5(password)WHERE session_id = 1;
UPDATE SESSION_DATABASE.SESSION_TABLE SET encrypted_password = MD5(password)WHERE session_id = 2;
UPDATE SESSION_DATABASE.SESSION_TABLE SET encrypted_password = MD5(password)WHERE session_id = 3;
UPDATE SESSION_DATABASE.SESSION_TABLE SET encrypted_password = MD5(password)WHERE session_id = 4;
UPDATE SESSION_DATABASE.SESSION_TABLE SET encrypted_password = MD5(password)WHERE session_id = 5;
UPDATE SESSION_DATABASE.SESSION_TABLE SET encrypted_password = MD5(password)WHERE session_id = 6;

