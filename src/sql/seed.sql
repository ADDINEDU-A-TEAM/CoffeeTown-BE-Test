-- 컬럼 생성 명령어 작성 --

insert into productCategory(productCategory_name) values -- id는 자동생성(1, 2, 3 .. ~)
('커피'), ('음료'), ('콜드브루'), ('빵');

insert into product(product_id, productCategory_id, product_name,  -- productCategory_id를 참조해서
product_info, product_price, product_ea, product_image) values -- 상품카테고리고유번호 입력
(1, 1, '아메리카노', '정보', 2000, 1, '이미지'),
(2, 1, '라떼', '정보', 3000, 1, '이미지'),
(3, 1, '에스프레소', '정보', 1500, 3, '이미지'),
(4, 2, '아이스티', '정보', 2000, 1, '이미지'),
(5, 2, '미숫가루', '정보', 3000, 2, '이미지'),
(6, 2, '레몬에이드', '정보', 3500, 5, '이미지'),
(7, 3, '콜드브루1', '정보', 3000, 0, '이미지'),
(8, 3, '콜드브루2', '정보', 3500, 3, '이미지'),
(9, 3, '콜드브루3', '정보', 4000, 1, '이미지'),
(10, 4, '샌드위치', '정보', 3000, 1, '이미지'),
(11, 4, '소세지빵', '정보', 3000, 1, '이미지'),
(12, 4, '에그타르트', '정보', 2000, 1, '이미지');