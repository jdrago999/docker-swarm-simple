
select 1;
create database if not exists backend_development;
create database if not exists backend_test;

grant all on *.* to 'virull'@'%';
flush privileges;
