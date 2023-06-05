-- 주소코드 
INSERT INTO address
(MUNICIPALITY_NAME, ADDRESS_CODE_ID)
VALUES
('서울시', 'A-01'), ('부산시', 'A-02'), ('경기도', 'A-03'), ('대전시', 'A-04'), ('인천시', 'A-05');

-- 이메일코드
INSERT INTO member_email
(EMAIL_ADDRESS, MEMBER_EMAIL_ID, MEMBER_ID)
VALUES
('hong@gmail.com', 'E-01', 'M-01'), ('park.younghee@naver.com', 'E-02', 'M-02'), ('kimchulsu@gmail.com', 'E-03', 'M-03'), 
('leeyoungmi@naver.com', 'E-04', 'M-04'), ('jmh123@gmail.com', 'E-05', 'M-05');

-- 젠더코드
INSERT INTO gender 
(GENDER_TITLE, GENDER_CODE_ID)
VALUES 
('남', 'G-01'), ('여', 'G-04');

-- 취미코드
INSERT INTO hobby_code
(HOBBY_NAME, HOBBY_CODE_ID)
Values
 ('요리', 'H-01'), ('등산', 'H-02'), ('독서', 'H-03'), 
 ('영화 감상', 'H-04'), ('음악 감상', 'H-05'), ('요가', 'H-06'), 
 ('여행', 'H-07'), ('사진 촬영', 'H-08'), ('수영', 'H-09');
 
--  취미랑 멤버 연결
INSERT INTO member_hobby
(MEMBER_ID, HOBBY_CODE_ID)
VALUES
('M-01', 'H-01'), ('M-01', 'H-02'), ('M-02', 'H-03'), 
('M-02', 'H-04'), ('M-03', 'H-05'), ('M-03', 'H-06'), 
('M-04', 'H-07'), ('M-04', 'H-08'), ('M-05', 'H-02'), 
('M-05', 'H-09');

-- 멤버정보
INSERT INTO member_info
(NAME, AGE, MOBILE_NUMBER, MEMBER_ID,GENDER_CODE_ID , ADDRESS_CODE_ID)
VALUES
('홍길동', '30', '010-1234-5678', 'M-01', 'G-01', 'A-01'), 
('박영희', '25', '010-9876-5432', 'M-02', 'G-04', 'A-02'), 
('김철수', '35', '010-1111-2222', 'M-03', 'G-01', 'A-03'), 
('이영미', '28', '010-3333-4444', 'M-04', 'G-04', 'A-04'), 
('정민호', '32', '010-5555-6666', 'M-05', 'G-01', 'A-05');