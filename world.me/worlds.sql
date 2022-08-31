
CREATE TABLE City_me
(
  ID         INT          NOT NULL COMMENT '아이디',
  Code       VARCHAR(200) NOT NULL COMMENT '국가 코드',
  Name       VARCHAR(200) NULL     COMMENT '이름',
  District   VARCHAR(200) NULL     COMMENT '구역',
  Population INT          NULL     COMMENT '인구',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE Country_me
(
  Code           VARCHAR(200) NOT NULL COMMENT '국가 코드',
  CountryCode    VARCHAR(200) NOT NULL COMMENT '국가',
  ID             INT          NOT NULL COMMENT '아이디',
  Name           VARCHAR(200) NULL     COMMENT '국가 이름',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  Continent      ENUM         NULL     COMMENT '대륙',
  SurfaceArea    DECIMAL      NULL     COMMENT '면적',
  IndepYear      DECIMAL      NULL     COMMENT '독립연도',
  Population     INT          NULL     COMMENT '인구',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대수명',
  GNP            DECIMAL      NULL     COMMENT '국민 총생산량',
  GNPOld         DECIMAL      NULL     COMMENT '과거 국민 총생산 량',
  LocalName      VARCHAR(200) NULL     COMMENT '현지 국가 이름',
  GovernmentForm VARCHAR(200) NULL     COMMENT '정부형태',
  HeadOfState    VARCHAR(200) NULL     COMMENT '국가원수',
  Capital        INT          NULL     COMMENT '수도',
  PRIMARY KEY (Code)
) COMMENT '나라';

CREATE TABLE CountryLanguage_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가',
  Code        VARCHAR(200) NOT NULL COMMENT '국가 코드',
  Language    varchar(200) NULL     COMMENT '언어',
  IsOfficial  ENUM         NULL     COMMENT '대표언어',
  Percentage  DECIMAL      NULL     COMMENT '문명률',
  PRIMARY KEY (CountryCode)
) COMMENT '나라별 언어';

ALTER TABLE Country_me
  ADD CONSTRAINT FK_CountryLanguage_me_TO_Country_me
    FOREIGN KEY (CountryCode)
    REFERENCES CountryLanguage_me (CountryCode);
