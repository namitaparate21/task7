select * from customer

----create view
create view customer_detail_view as 
select customer_id,age,city,region
from customer
where  city = 'Los Angeles'

select * from customer_detail_view

-- update
update customer_detail_view
set region = 'central'
where age > 40

select * from customer_detail_view

--- alter view
alter table customer_detail_view
add column  gender varchar(50)

------ ERROR: This operation is not supported for views.ALTE transaction ADD COLUMN be performed on relation "customer_detail_view"

--- delete view 
select * from customer_detail_view

begin

delete from customer_detail_view where customer_id = 'DB-13615'

select * from customer_detail_view
	

