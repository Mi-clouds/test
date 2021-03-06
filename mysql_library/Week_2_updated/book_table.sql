create database if not exists library;
use library;

create table if not exists book_table(
ISBN bigint not null primary key,
published_year_id int not null,
publisher_name_id int not null,
type_of_resource_id int not null,
book_title_id int not null,
foreign key (published_year_id) references publishing_year_table (year_published_id),
foreign key (publisher_name_id) references publisher_id_table (publisher_id),
foreign key (type_of_resource_id) references resource_type_table (resource_type_id),
foreign key (book_title_id) references book_title_table (title_id),
age_rating int not null,
replacement_price decimal(4, 2) not null,
number_of_copies int not null
);

INSERT INTO book_table (ISBN, published_year_id, publisher_name_id, type_of_resource_id, book_title_id, age_rating, replacement_price, number_of_copies)
VALUES (1481425730,	13,	19,	1,	1,	18,	10.99,	3),
(1481425749,	13,	19,	1,	1,	18,	10.99,	1),
(9781481425735,	13,	19,	1,	1,	18,	10.99,	1),
(9781481425742,	13,	19,	1,	1,	18,	10.99,	2),
(940208130,	4,	16,	1,	2,	18,	6.99,	5),
(780662040,	11,	23,	2,	3,	0,	5.99,	2),
(780674316,	11,	23,	2,	3,	0,	5.99,	3),
(9780780662049,	11,	23,	2,	3,	0,	5.99,	2),
(9780780674318,	11,	23,	2,	3,	0,	5.99,	2),
(439358061,	7,	17,	1,	4,	0,	6.99,	6),
(9780439358064,	7,	17,	1,	4,	0,	6.99,	4),
(1607886154,	10,	7,	3,	5,	0,	15.99,	2),
(9781607886150,	10,	7,	3,	5,	0,	15.99,	1),
(1137539909,	2,	14,	5,	6,	0,	49.99,	4),
(9781137539908,	11,	14,	5,	6,	0,	49.99,	1),
(1608185141,	14,	2,	6,	7,	0,18.99,	3),
(1628321148,	14,	2,	6,	7,	0,	18.99,	2),
(9781608185146,	14,	2,	6,	7,	0,	18.99,	2),
(9781628321142,	14,	2,	6,	7,	0,	18.99,	1),
(444413693,	3,	5,	1,	8,	0,	12.99,	3),
(1476755213,	16,	18,	1,	9,	18,	6.99,	7),
(9781476755212,	16,	18,	1,	9,	18,	6.99,	2),
(160687872,	12,	12,	8,	10,	0,	15.99,	3),
(123748569,	11,	10,	5,	11,	0,	69.99,	9),
(9780123748560,	11,	10,	5,	11,	0,	69.99,	2),
(448462443,	13,	6,	1,	12,	0,	6.99,	4),
(448462451,	13,	6,	1,	12,	0,	6.99,	1),
(9780448462448,	13,	6,	1,	12,	0,	6.99,	1),
(9780448462455,	13,	6,	1,	12,	0,	6.99,	1),
(1491903996,	13,	13,	5,	13,	0,	49.99,	2),
(9781491903995,	13,	13,	5,	13,	0,	49.99,	2),
(201896834,	6,	1,	5,	14,	0,	54.99,	4),
(393254023,	9,	22,	5,	15,	0,	69.99,	4),
(9780393254020,	15,	22,	5,	15,	0,	69.99,	3),
(1423116968,	10,	4,	1,	16,	0,	8.99,	6),
(1423117107,	10,	4,	1,	16,	0,	8.99,	4),
(9781423116967,	10,	4,	9,	16,	0,	4.99,	3),
(9781423117100,	10,	4,	9,	16,	0,	4.99,	1),
(62484877,	16,	8,	9,	17,	16,	6.99,	1),
(9780758265333,	13,	3,	1,	18,	18,	4.99,	8),
(9780452298965,	12,	15,	4,	19,	18,	28.99,	3),
(765377209,	14,	21,	9,	20,	16,	3.99,	6),
(9780765377203,	14,	21,	8,	20,	16,	10.99,	2),
(385471106,	5,	11,	3,	21,	18,	15.99,	4),
(1454915544,	14,	20,	1,	22,	0,	10.99,	3),
(9781454915546,	14,	20,	3,	22,	0,	10.99,	1),
(786951079,	9,	24,	1,	23,	16,	6.99,	2),
(9780786951079,	9,	24,	9,	23,	16,	3.99,	2),
(618968636,	1,	9,	6,	24,	16,	14.99,	8),
(9780618968633,	8,	9,	1,	24,	16,	9.99,	3);


-- select * from book_table;