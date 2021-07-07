create table tbl_worker_attendance(
attendance_id bigint not null auto_increment primary key,
worker_id bigint not null,
checkin_ts timestamp not null default current_timestamp,
checkout_ts timestamp,
status enum(‘1’,’2’,’3’) not null default ‘1’,
comment text(1000),
created_ts timestamp not null default current_timestamp,
modified_ts timestamp not null default current_timestamp,
isFrozen enum(‘0’,’1’) default ‘0’,
index workers_ind (worker_id)
constraint chk_time check (checkin_ts<checkout_ts)
);

-------------------------------------------------------------------------------


insert into tbl_worker_attendance values(
1112,
277920,
‘2021-06-23 06-06-66’,
‘2021-06-24 00-00-00’,
’1’,
’lqwefngfvbbdkioikj’,
’2021-06-25 00-00-00’,
’2021-06-26 06-00-00’);