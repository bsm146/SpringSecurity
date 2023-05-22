CREATE TABLE `TB_USER`
(
    `USER_NO`     INT(11) NOT NULL AUTO_INCREMENT COMMENT '사용자번호',
    `USER_ID`     VARCHAR(255) NOT NULL COMMENT '아이디',
    `USER_PW`     VARCHAR(256) DEFAULT NULL COMMENT '비밀번호',
    `USER_NAME`   VARCHAR(255) NOT NULL COMMENT '사용자명',
    `USER_AUTH`   VARCHAR(255) NOT NULL COMMENT '권한',
    `APPEND_DATE` datetime     DEFAULT NULL COMMENT '추가날짜',
    `UPDATE_DATE` datetime     DEFAULT NULL COMMENT '수정날짜',
    PRIMARY KEY (`USER_NO`)
);

SELECT * FROM tb_user;