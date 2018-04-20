-- Create table
create table USER
(
  USER_ID           BIGINT not null,
  USER_NAME         VARCHAR(64) not null,
  FIRST_NAME		VARCHAR(36) not null,
  LAST_NAME			VARCHAR(36) not null,
  CREATED			timestamp not null,
  LAST_MODIFIED		timestamp,
  CREATED_BY		BIGINT not null,
  UPDATED_BY		BIGINT,
  ENCRYTED_PASSWORD VARCHAR(128) not null,
  ENABLED           Int not null 
);
--  
alter table USER
  add constraint USER_PK primary key (USER_ID);
 
alter table USER
  add constraint USER_UK unique (USER_NAME);
  
-- Create table
create table ROLE
(
  ROLE_ID  			BIGINT not null,
  ROLE_NAME 		VARCHAR(30) not null,
  CREATED			timestamp not null,
  LAST_MODIFIED		timestamp,
  CREATED_BY		BIGINT not null,
  UPDATED_BY		BIGINT,
  ENABLED           Int not null 
);
--  
alter table ROLE
  add constraint ROLE_PK primary key (ROLE_ID);
 
alter table ROLE
  add constraint ROLE_UK unique (ROLE_NAME);
  
-- Create table
create table USER_ROLE
(
  USER_ROLE_ID      BIGINT not null,
  USER_ID 			BIGINT not null,
  ROLE_ID 			BIGINT not null,
  CREATED			timestamp not null,
  LAST_MODIFIED		timestamp,
  CREATED_BY		BIGINT not null,
  UPDATED_BY		BIGINT,
  ENABLED           Int not null 
);
--  
alter table USER_ROLE
  add constraint USER_ROLE_PK primary key (ID);
 
alter table USER_ROLE
  add constraint USER_ROLE_UK unique (USER_ID, ROLE_ID, ENABLED);
 
alter table USER_ROLE
  add constraint USER_ROLE_FK1 foreign key (USER_ID)
  references USER (USER_ID);
 
alter table USER_ROLE
  add constraint USER_ROLE_FK2 foreign key (ROLE_ID)
  references ROLE (ROLE_ID);
  
-- Used by Spring Remember Me API.  
CREATE TABLE CURRENT_LOGINS 
(
    USERNAME   VARCHAR(64) not null,
    SERIES     VARCHAR(64) not null,
    TOKEN      VARCHAR(64) not null,
    LAST_USED  timestamp not null,
    PRIMARY KEY (series)
     
);
-- Uploaded Content Table  
CREATE TABLE CONTENT_META (
	CONTENT_ID   	VARCHAR(128) not null,
	CONTENT_NAME	VARCHAR(64) not null,
	CONTENT_TYPE    VARCHAR(6) not null,
	CONTENT_SIZE    INT not null,
	LOCATION        VARCHAR(256) not null,
	CREATED			timestamp not null,
	LAST_MODIFIED	timestamp,
	CREATED_BY		BIGINT not null,
	ENABLED         Int not null 
);

alter table CONTENT_META
  add constraint CONTENT_META_PK primary key (CONTENT_ID);
 
CREATE TABLE CONTENT_HISTORY (
	CONTENT_HISTORY_ID  VARCHAR(128) not null,
	CONTENT_ID   		VARCHAR(128) not null,
	CONTENT_NAME	   	VARCHAR(64) not null,
	CONTENT_TYPE      	VARCHAR(12) not null,
	CONTENT_SIZE        INT not null,
	LOCATION        	VARCHAR(256) not null,
	LAST_MODIFIED		timestamp not null,
	CREATED_BY			BIGINT not null,
	UPDATED_BY			BIGINT not null,
	ENABLED           	Int not null 
);

alter table CONTENT_HISTORY
  add constraint CONTENT_HISTORY_PK primary key (CONTENT_HISTORY_ID);
  
  
