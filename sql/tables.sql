create table threads (
  thread_id int not null primary key;
);
create table coroutines (
  coroutine_id int not null primary;
);
create table sockets (
  socket_id int not null primary;
);
create table coroutine_states (
  state int not null primary;
  coroutine int;
);
insert into threads (thread_id) values( 1, 2, 3, 4);
insert into coroutines (coroutine_id, thread_id), values (1, 2);

select * from data_stream1 inner join data_stream2, data_stream3 where data_stream1.id = data_stream2.id and data_stream2.id = 6;

multiple sql expressions?




