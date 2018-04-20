--------------------------------------

insert into User (USER_ID, USER_NAME, FIRST_NAME, LAST_NAME, CREATED, LAST_MODIFIED, CREATED_BY, ENCRYTED_PASSWORD, ENABLED)
values (1, 'SuperUser', NULL, NULL, current_timestamp, NULL , 'SYSTEM', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
 
insert into User (USER_ID, USER_NAME, FIRST_NAME, LAST_NAME, CREATED, LAST_MODIFIED, CREATED_BY, ENCRYTED_PASSWORD, ENABLED)
values (2, 'DefaultUser', NULL, NULL, current_timestamp, NULL , 1, '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
 
---
 
insert into role (ROLE_ID, ROLE_NAME, CREATED, LAST_MODIFIED, CREATED_BY, ENABLED)
values (1, 'ROLE_ADMIN', current_timestamp, NULL, 1, 1);

insert into role (ROLE_ID, ROLE_NAME, CREATED, LAST_MODIFIED, CREATED_BY, ENABLED)
values (2, 'ROLE_BASIC', current_timestamp, NULL, 1, 1);
 
---
 
insert into user_role (ID, USER_ID, ROLE_ID, CREATED, LAST_MODIFIED, CREATED_BY, ENABLED)
values (1, 1, 1);
 
insert into user_role (ID, USER_ID, ROLE_ID, CREATED, LAST_MODIFIED, CREATED_BY, ENABLED)
values (2, 2, 2, current_timestamp, NULL, 1, 1);
---
Commit;