### 조건에 부합하는 중고거래 댓글 조회하기 (난이도1) 2023.06.14
# https://school.programmers.co.kr/learn/courses/30/lessons/164673
# 성공 답안1
SELECT
    TITLE,
    BOARD.BOARD_ID,
    REPLY.REPLY_ID,
    REPLY.WRITER_ID,
    REPLY.CONTENTS,
    DATE_FORMAT(REPLY.CREATED_DATE, '%Y-%m-%d')
FROM USED_GOODS_BOARD as BOARD
    RIGHT JOIN USED_GOODS_REPLY as REPLY
    on BOARD.BOARD_ID = REPLY.BOARD_ID
    WHERE DATE_FORMAT(BOARD.CREATED_DATE, '%Y-%m') = '2022-10'
    ORDER BY REPLY.CREATED_DATE, TITLE;
# 성공 답안2
SELECT b.TITLE,
    b.BOARD_ID,
    r.REPLY_ID,
    r.WRITER_ID,
    r.CONTENTS,
    date_format(r.CREATED_DATE,"%Y-%m-%d") CREATED_DATE
from USED_GOODS_BOARD b, USED_GOODS_REPLY r 
    where b.BOARD_ID = r.BOARD_ID
    and date_format(b.CREATED_DATE,"%Y%m") = 202210 
order by r.CREATED_DATE ,b.TITLE;



### 강원도에 위치한 생산공장 목록 출력하기 (난이도1) 2023.06.14
# https://school.programmers.co.kr/learn/courses/30/lessons/131112
# 성공 답안1
SELECT
    FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS like '강원도%';



### 흉부외과 또는 일반외과 의사 목록 출력하기 (난이도1) 2023.06.14
# https://school.programmers.co.kr/learn/courses/30/lessons/132203
# 성공 답안1
SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') as HIRE_YMD
    FROM DOCTOR
    WHERE MCDP_CD IN ('CS','GS')
    ORDER BY HIRE_YMD DESC, DR_NAME ASC;



### 조건에 맞는 도서 리스트 출력하기 (난이도1) 2023.06.15
# https://school.programmers.co.kr/learn/courses/30/lessons/144853
# 성공 답안1
SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
    FROM BOOK
    WHERE CATEGORY = '인문'
    AND PUBLISHED_DATE LIKE '2021%'
    ORDER BY PUBLISHED_DATE;



### 평균 일일 대여 요금 구하기 (난이도1) 2023.06.15
# https://school.programmers.co.kr/learn/courses/30/lessons/151136
# 성공 답안1 : format으로 하면 ex.) 35,665 처럼 나와서 실패함. round로 해야 한다.
SELECT round(avg(DAILY_FEE), 0) AS AVERAGE_FEE
    FROM CAR_RENTAL_COMPANY_CAR
    WHERE CAR_TYPE = 'SUV';



### 과일로 만든 아이스크림 고르기 (난이도1) 2023.06.15
# https://school.programmers.co.kr/learn/courses/30/lessons/133025
# 실패 답안1 : WHERE로만 하면 안됨 JOIN도 사용해야 함
SELECT F.FLAVOR
    FROM ICECREAM_INFO AS I, FIRST_HALF AS F
    WHERE F.TOTAL_ORDER > 3000
    AND I.INGREDIENT_TYPE = 'fruit_based';
# 성공 답안 1
SELECT F.FLAVOR
    FROM ICECREAM_INFO AS I
    LEFT JOIN FIRST_HALF AS F
    ON I.FLAVOR = F.FLAVOR
    WHERE F.TOTAL_ORDER > 3000
    AND I.INGREDIENT_TYPE = 'fruit_based';
    
    

### 12세 이하인 여자 환자 목록 출력하기 (난이도1) 2023.06.22
# https://school.programmers.co.kr/learn/courses/30/lessons/132201
# 성공답안
SELECT PT_NAME, PT_NO, GEND_CD, AGE, ifnull(TLNO, 'NONE') as TLNO
    FROM PATIENT
    WHERE AGE <= 12
    AND GEND_CD = 'W'
    ORDER BY AGE DESC, PT_NAME ASC;



### 인기있는 아이스크림 (난이도1) 2023.06.22
# https://school.programmers.co.kr/learn/courses/30/lessons/133024
# 성공답안
SELECT FLAVOR
    FROM FIRST_HALF
    ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC



### 재구매가 일어난 상품과 회원 리스트 구하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131536
# 문제 정답이 뭔가 이상함!!
# 나중에 재도전



