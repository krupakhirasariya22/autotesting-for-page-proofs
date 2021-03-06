INSERT INTO user_roles(NAME, ROLE_CODE) VALUE ('Администратор', 1);
INSERT INTO user_roles(NAME, ROLE_CODE) VALUE ('Тестировщик', 2);
INSERT INTO user_roles(NAME, ROLE_CODE) VALUE ('Младший тестировщик', 3);
INSERT INTO user_roles(NAME, ROLE_CODE) VALUE ('Старший тестировщик', 4);

INSERT INTO user_info (FIRST_NAME, LAST_NAME, LOGIN, PASSWORD, ROLE_ID)
  SELECT 'Админ', 'Админов', 'admin', SHA2('admin', 256), r.ID FROM user_roles r WHERE r.ROLE_CODE = 1;
INSERT INTO user_info (FIRST_NAME, LAST_NAME, LOGIN, PASSWORD, ROLE_ID)
  SELECT 'Тестер', 'Тестеров', 'tester', SHA2('tester', 256), r.ID FROM user_roles r WHERE r.ROLE_CODE = 2;
INSERT INTO user_info (FIRST_NAME, LAST_NAME, LOGIN, PASSWORD, ROLE_ID)
  SELECT 'Тестер', 'Младший', 'jtester', SHA2('jtester', 256), r.ID FROM user_roles r WHERE r.ROLE_CODE = 3;
INSERT INTO user_info (FIRST_NAME, LAST_NAME, LOGIN, PASSWORD, ROLE_ID)
  SELECT 'Тестер', 'Старший', 'stester', SHA2('stester', 256), r.ID FROM user_roles r WHERE r.ROLE_CODE = 4;