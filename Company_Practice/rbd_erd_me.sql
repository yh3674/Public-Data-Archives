
CREATE TABLE COMPANY
(
  ID      VARCHAR(200) NOT NULL,
  NAME    VARCHAR(200) NOT NULL,
  AGE     INT          NULL    ,
  ADDRESS VARCHAR(200) NULL    ,
  SALARY  INT          NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE COMPANY_DEPT
(
  COMPANY_ID VARCHAR(200) NOT NULL,
  DEPT_ID    VARCHAR(200) NOT NULL
) COMMENT 'Relation Table';

CREATE TABLE DEPARTMENT
(
  ID   VARCHAR(200) NOT NULL,
  DEPT VARCHAR(200) NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE COMPANY_DEPT
  ADD CONSTRAINT FK_COMPANY_TO_COMPANY_DEPT
    FOREIGN KEY (COMPANY_ID)
    REFERENCES COMPANY (ID);

ALTER TABLE COMPANY_DEPT
  ADD CONSTRAINT FK_DEPARTMENT_TO_COMPANY_DEPT
    FOREIGN KEY (DEPT_ID)
    REFERENCES DEPARTMENT (ID);
