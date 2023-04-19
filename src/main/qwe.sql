SELECT * FROM seeker;
SELECT * FROM offer;
SELECT * FROM board ORDER BY id DESC;
SELECT * FROM resume;
SELECT * FROM join_application;

DROP TABLE seeker;
DROP TABLE offer;
DROP TABLE board;
DROP TABLE resume;
DROP TABLE join_application;


SELECT seeker_id, resume_title
FROM join_application
WHERE board_id = 4;
DELETE FROM board WHERE id = 4 AND 6;

SELECT * FROM offer WHERE company_name = '낸드';
SELECT ceo_name, ceo_phone, ceo_email, company_name, company_phone, company_address, company_number FROM offer WHERE company_name = '낸드';

DELETE FROM board;
INSERT INTO board (company_name, writer, title, content, end_date, career, salary, education, working_hour, working_type, work_area)
VALUES ('낸드', 'q', '프로그래머', '프로그래머를 구합니다.', '2020-12-31', '신입', '3000만원', '대졸', '오전 9시 ~ 오후 6시', '정규직', '서울'),
       ('낸드', 'q', '마케팅 전문가', '마케팅 전문가를 모집합니다.', '2021-05-31', '경력', '4000만원', '대졸 이상', '오전 10시 ~ 오후 7시', '정규직', '서울'),
       ('낸드', 'q', '웹 디자이너', '웹 디자이너를 채용합니다.', '2021-06-30', '신입 또는 경력', '3500만원', '전공자 우대', '오전 9시 ~ 오후 6시', '정규직 또는 계약직', '경기');


SELECT * FROM TB_USER;