-- 테이블 생성 명령어 작성

create table menuCategory(
	menuCategory_id int auto_increment primary key, -- 메뉴 카테고리 고유번호
	menuCategory_name varchar(20) not null, -- 메뉴 & 상품 카테고리 이름
	ref_Category_id int, -- 상품 카테고리 고유번호
	foreign key (ref_Category_id) references menuCategory(menuCategory_id) -- 같은 table menuCategory_id 참조
);

create table product(
	product_id int auto_increment primary key, -- 상품 고유번호
	menuCategory_id int, -- 상품 카테고리 고유번호(foreign key)
	product_name varchar(50) unique not null, -- 상품 이름
	product_info varchar(250), -- 상품 정보
	product_price int not null, -- 상품 가격
	product_ea int not null default 0, -- 상품 개수, 초깃값 0
	product_image varchar(250), -- 상품 이미지
	foreign key (menuCategory_id) 
	references menuCategory(menuCategory_id) -- 상품카테고리_id를 참조
	on update cascade on delete restrict 
);