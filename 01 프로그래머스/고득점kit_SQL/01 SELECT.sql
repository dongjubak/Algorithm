### 조건에 부합하는 중고거래 댓글 조회하기 (난이도1)
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



### 강원도에 위치한 생산공장 목록 출력하기 (난이도1)
# https://school.programmers.co.kr/learn/courses/30/lessons/131112
# 성공 답안1
SELECT
    FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS like '강원도%';



### 흉부외과 또는 일반외과 의사 목록 출력하기 (난이도1)
# https://school.programmers.co.kr/learn/courses/30/lessons/132203
# 성공 답안1
SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') as HIRE_YMD
    FROM DOCTOR
    WHERE MCDP_CD IN ('CS','GS')
    ORDER BY HIRE_YMD DESC, DR_NAME ASC;
