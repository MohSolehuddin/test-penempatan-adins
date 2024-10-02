create table m_barang (
kode_barang serial primary key,
nama_barang varchar(30)
);

insert into m_barang (nama_barang) values ('Meja');
insert into m_barang (nama_barang) values ('Kursi');
insert into m_barang (nama_barang) values ('Lampu');

create table t_jual (
kode_barang int not null,
jumlah int not null,
foreign key (kode_barang) references m_barang(kode_barang) 
);

insert into t_jual (kode_barang, jumlah) values (1,2);
insert into t_jual (kode_barang, jumlah) values (1,3);
insert into t_jual (kode_barang, jumlah) values (2,4);

select b.kode_barang, b.nama_barang, (select sum(j.jumlah) from t_jual j where j.kode_barang = b.kode_barang group by j.kode_barang ) from m_barang b;