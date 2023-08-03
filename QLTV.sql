create database librarymanagement
use database librarymanagement
create table TypesOfBooks
(
	typesofbooks_id int not null  primary key,
	namesofbooks varchar(50) not null
);
create table Authors
(
	author_id int not null  primary key,
	authorname varchar(50) not null
);
create table PublishingCompany
(
	pc_id int not null primary key,
	pcname varchar(30) not null
);
create table BookStatus
(
	bookstatus_id int not null primary key,
	bookstatusname varchar(30) not null
);
create table Books
(
	book_id int not null  primary key,
	booktitle varchar(50) not null,
	publishingyear date not null,
	importdate int not null,
	quantity int not null,
	price int not null,
	typesofbooks_id int ,
	author_id int ,
	pc_id int ,
	bookstatus_id int ,
	foreign key (typesofbooks_id) references TypesOfBooks(typesofbooks_id),
	foreign key (author_id) references Authors(author_id),
	foreign key (pc_id) references PublishingCompany(pc_id),
	foreign key (bookstatus_id) references BookStatus(bookstatus_id)
);


create table Readers
(
	reader_id int not null primary key,
	readername varchar(50) not null,
	dateofbirth date not null,
	addresss varchar (100) not null,
	carddate date not null,
	outofdate date not null,
	numberofborrowedbook int null
);
create table LoanSlips
(
	loanslip_id int not null  primary key,
	reader_id int,
	borrowdate date not null,
	returndate date not null,
	foreign key (reader_id) references Readers(reader_id)
);
create table LoanSlipDetails
(
	loanslipdetail_id int not null  primary key,
	note varchar(20) null,
	book_id int,
	loanslip_id int,
	foreign key (book_id) references Books(book_id),
	foreign key (loanslip_id) references LoanSlips(loanslip_id)
);

create table Users
(
	user_id int not null primary key,
	username varchar(50) not null,
	passwords varchar(20) not null
);


INSERT TypesOfBooks (typesofbooks_id, namesofbooks) 
VALUES ('1', 'A'),
VALUES ('2', 'B'),
VALUES ('3', 'C');

INSERT Authors (author_id, authorname)
VALUES ('1', 'Hồ Chí Minh'),
VALUES ('2', 'Hamlet Trương'),
VALUES ('3', 'Nguyễn Ngọc Thạch'),
VALUES ('4', 'Anh Khang'),
VALUES ('5', 'Hà Minh Tuân'),
VALUES ('6', 'Anh Khang'),
VALUES ('7', 'Bạch Cư Dị'),
VALUES ('8', 'Lỗ Tấn'),
VALUES ('9', 'Thế Lữ'),
VALUES ('10', 'Nguyễn Du');

INSERT PublishingCompany (pc_id, pcname)
VALUES ('1', 'Kim Đồng '),
VALUES ('2', 'IPM');

INSERT BookStatus (bookstatus_id, bookstatusname)
VALUES ('1','Có sẵn'),
VALUES ('2','Không có sẵn');

INSERT Books (book_id, booktitle, typesofbooks_id, author_id, publishingyear, importdate, manhaxuatban, trigia, matinhtrangsach) 
VALUES ('1', 'XSTK', '1', 'TG002','2018-06-27', '2023-06-27', '2', 30000, '1'),
VALUES ('2', 'GT', '1', 'TG001', '2018-06-27', '2023-06-27', '1', 30000, '1'),
VALUES ('3', 'HDH', '2', 'TG004','2018-06-27', '2023-06-27', '1', 30000, '1'),
VALUES ('4', 'CSDL', '1', 'TG008','2018-06-27', '2023-06-27', '1', 30000, '1'),
VALUES ('5', 'KTLT', '2', 'TG005', '2018-06-27', '2023-06-27', '2', 30000, '1'),
VALUES ('6', 'LTTQ', '3', 'TG001','2018-06-27', '2023-06-27', '1', 30000, '1'),
VALUES ('7', 'CNPM', '3', 'TG005','2018-06-27', '2023-06-27', '1', 30000, '1'),
VALUES ('8', 'LTTQ', '3', 'TG001','2018-06-27', '2023-06-27', '1', 30000, '1'),
VALUES ('9', 'TTHCM', '2', 'TG005','2018-06-27', '2023-06-27', '2', 30000, '1'),
VALUES ('10', 'DLDCSVN', '1', 'TG008','2018-06-27', '2023-06-27', '1', 30000, '1'),
VALUES ('11', 'PORN', '2', 'TG005','2018-06-27', '2023-06-27', '1', 30000, '1')


INSERT LoanSlipDetails (loanslipdetail_id, loanslip_id, book_id, note) 
VALUES ('1', '1', '3', 'Trả Trễ'),
VALUES ('2', '1', '1', 'Trả Trễ');

INSERT LoanSlips (loanslip_id, reader_id, borrowdate, returndate) 
VALUES ('1', '1','2023-06-28','2023-08-01'),
VALUES ('2', '1','2023-06-28','2023-07-01');

INSERT Readers (reader_id, readername, dateofbirth, addresss, carddate, outofdate, numberofborrowedbook) 
VALUES ('1', 'Khang Trương', '1998-12-3', 'KTX Khu A', '2015-12-3', '1998-12-3', 1),
VALUES ('2', 'Hiệp Gà','1998-12-3', 'KTX Khu N', '2015-12-30', '1998-12-30', 0);



