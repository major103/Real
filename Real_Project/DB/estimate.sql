/*


--견적

select * from estimate

create sequence seq_estimate_e_index


create table estimate(
	
	e_index			int,						--
	car_name		varchar2(100),		--fk	--차량 이름
	e_option			varchar2(100),			--옵션
	e_price			int							--가격

)
 

--fk
alter table estimate
	add constraint fk_estim_car_name foreign key(car_name)
	references car(car_name)
--pk
alter table estimate
	add constraint pk_estim_e_index primary key(e_index)
 
 
 select * from car
 
 
 
 --sample data
 insert into estimate values(
 	seq_estimate_e_index.nextVal,
 	'911-Carrera',
 	'알수없음',
 	0
 
 
 )
 
 
 
 
drop table estimate
 
 
 */