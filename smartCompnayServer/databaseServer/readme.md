# service database connector

<hr>

## Query List

1. Services Table SQL

```sql
create table services_table(
    service_id int primary key auro increment,
    service_name varchar(255) not null,
    service_img_url varchar(255) not null,
    service_url varchar(255) not null
);
```