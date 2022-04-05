# EFUB 4주차 세미나 과제

###### {백인턴} {김은서}



### 01. 학사 정보 관리 ERD

[diagrams.net 실습 링크](https://app.diagrams.net/#G1Dc6V8exQ2r4PyoHWqo_coXHqXALMt5f5)

[사진]



### 02. MySQL 실습 코드

##### SWS 테이블 생성 코드

```
USE efub;
CREATE TABLE sws (
	sws_id BIGINT NOT NULL auto_increment,
    name VARCHAR(45) NOT NULL,
    primary key (sws_id)
);

INSERT INTO sws (name)
VALUES
("1팀"),
("2팀");
```



##### JOIN 코드

```
SELECT
member.name AS member_name, position, email, birth_date, 
sws.name AS sws_name
FROM sws INNER JOIN member
ON sws.sws_id = member.sws_id;
```



##### JOIN 출력 결과

![0405 MySQL 실습 결과](https://user-images.githubusercontent.com/70934572/161754171-50741183-be04-4843-a561-d372414b4628.PNG)
