/*
--자동차 정보

select * from car



create sequence seq_car_index
--테이블

create table car(
	car_index		int,
	car_name 		varchar2(255)	not null,	--차량이름
	car_size		varchar2(255),				--차량크기
	co_name			varchar2(255),				--차량브랜드(브랜드, co_name) fk
	car_price		varchar2(255),				--차량가격
	car_fuel		varchar2(255),				--차량연료
	car_type		varchar2(255),				--차량종류
	car_fcost		int,						--차량연비
	car_output		varchar2(255),				--차량출력
	car_torq		varchar2(255),				--차량토크
	car_exhaust		varchar2(255),				--차량배기
	car_engine		varchar2(255),				--차량엔진
	car_drive		varchar2(255),				--차량구동
	car_change		varchar2(255),				--차량변속
	car_photo		varchar2(255)				--차량사진

)
select * from car where car_index=1
--pk
alter table car
	add constraint pk_car_index primary key(car_index);


--차종 unique
alter table car
	add constraint unique_car_name unique(car_name);
	

--fk
alter table car
	add constraint fk_co_name foreign key(co_name)
	references company(co_name);
	
	  
--sample data
insert into car
	values( 1,
			'911-Carrera',
			'coupe',
			'porsche',
			'158,700,000',
			'휘발유',
			'RR',
			null,
			'392/6500',
			'45.9/1950-5000',
			'2981cc',
			'수형대향 6기통 트윈터보',
			null,
			'DCT 8단',
			null
			)
			
			
			
 
 drop table car
 
 
 
 
 
 */