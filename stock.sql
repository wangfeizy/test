select * from t_store where id in (select store_id from t_store_office where office_id=21);

select * from t_stock where store_id in (select store_id from t_store_office where office_id=21);

select * from t_stock_product where stock_id in (select id from t_stock where store_id in (select store_id from t_store_office where office_id=21));

delete from t_stock_product where stock_id in (select id from t_stock where store_id in (select store_id from t_store_office where office_id=21));
delete from t_stock where store_id in (select store_id from t_store_office where office_id=21);
test line add to dev is quick
