create table m_history_barang (
kode_stok serial primary key,
tanggal date not null,
kode_barang varchar(5) not null,
stok_akhir int not null
)


insert into m_history_barang (tanggal, kode_barang, stok_akhir) values ('01/01/09', 'A', 2);
insert into m_history_barang (tanggal, kode_barang, stok_akhir) values ('01/01/09', 'A', 5);
insert into m_history_barang (tanggal, kode_barang, stok_akhir) values ('01/01/09', 'B', 1);
insert into m_history_barang (tanggal, kode_barang, stok_akhir) values ('01/01/09', 'A', 3);
insert into m_history_barang (tanggal, kode_barang, stok_akhir) values ('01/01/09', 'B', 3);
insert into m_history_barang (tanggal, kode_barang, stok_akhir) values ('01/01/09', 'A', 5);
insert into m_history_barang (tanggal, kode_barang, stok_akhir) values ('01/01/09', 'A', 4);

select kode_barang, (select stok_akhir from m_history_barang secondMkd where secondMkd.kode_barang = mkd.kode_barang order by secondMkd.kode_stok desc limit 1) from m_history_barang mkd group by kode_barang;