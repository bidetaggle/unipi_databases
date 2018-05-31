create table employees (
	id_employee SERIAL PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	email VARCHAR(50),
	phone VARCHAR(50),
	TRN VARCHAR(50),
	category INT
);
create table individuals (
	id_owner SERIAL PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	email VARCHAR(50),
	phone VARCHAR(50),
	TRN VARCHAR(50)
);
create table vehicules (
	id_vehicule SERIAL PRIMARY KEY,
	id_owner INT REFERENCES individuals,
	manufacturer VARCHAR(50),
	model VARCHAR(50),
	manufacturing_date DATE,
	status INT,
	license_number VARCHAR(50)
);
create table repairs (
	id_repair SERIAL PRIMARY KEY,
	id_employee INT REFERENCES employees,
	id_vehicule INT REFERENCES vehicules,
	cost DECIMAL(6,2),
	start_date DATE,
	end_date DATE
);
create table sales (
	id_sale SERIAL PRIMARY KEY,
	id_employee INT REFERENCES employees,
	id_vehicule INT REFERENCES vehicules,
	price DECIMAL(7,2),
	sale_date DATE
);

-- employees.category : 0 = salesmen / 1 = technicians
-- vehicules.status : 0 = second hand / 1 = new

insert into employees (firstname, lastname, email, phone, TRN, category) values ('Garold', 'Fison', 'gfison0@blogs.com', '140-647-7041', '06-219-3888', 1);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Bernette', 'O'' Scallan', 'boscallan1@imdb.com', '302-291-2641', '11-693-8060', 0);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Joycelin', 'Cotty', 'jcotty2@wordpress.org', '465-254-9643', '52-641-1792', 1);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Thorn', 'Whorf', 'twhorf3@ifeng.com', '892-596-6584', '46-346-8880', 0);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Roxanna', 'Mc Trusty', 'rmctrusty4@angelfire.com', '212-380-5629', '35-016-7858', 1);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Issi', 'Prinne', 'iprinne5@nytimes.com', '562-256-7323', '18-494-1748', 1);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Jinny', 'Aked', 'jaked6@chronoengine.com', '584-742-9451', '30-909-5297', 0);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Madlin', 'Zuker', 'mzuker7@merriam-webster.com', '952-108-4568', '05-529-0398', 1);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Pieter', 'Spadelli', 'pspadelli8@sitemeter.com', '654-501-0568', '18-242-6156', 1);
insert into employees (firstname, lastname, email, phone, TRN, category) values ('Emelda', 'Maypother', 'emaypother9@shareasale.com', '888-567-9579', '29-194-4427', 0);


insert into individuals (firstname, lastname, email, phone, TRN) values ('Toddie', 'Fearns', 'tfearns0@dailymotion.com', '6477726714', '88-407-4110');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Reggi', 'Gumly', 'rgumly1@cbslocal.com', '7855601457', '01-970-6030');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Allyn', 'Kissell', 'akissell2@hc360.com', '9985260366', '74-589-6421');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Carlota', 'Dubock', 'cdubock3@constantcontact.com', '3681712656', '25-541-3767');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Kaitlyn', 'Ropking', 'kropking4@barnesandnoble.com', '7999865607', '72-984-0899');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Rafael', 'Jaquest', 'rjaquest5@goo.gl', '8165774217', '52-790-7511');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Doloritas', 'Rudinger', 'drudinger6@reference.com', '4892000565', '39-759-3584');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Roddy', 'Dubs', 'rdubs7@free.fr', '5645369365', '24-552-6108');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Caddric', 'Eschalotte', 'ceschalotte8@mail.ru', '3247259918', '56-930-1060');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Muire', 'Mollene', 'mmollene9@pen.io', '1545102401', '20-849-3495');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Fielding', 'Botly', 'fbotlya@gravatar.com', '6237548505', '95-671-8911');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Timothee', 'Cunniff', 'tcunniffb@smugmug.com', '2041286000', '39-909-0652');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Yvon', 'Jarrelt', 'yjarreltc@yale.edu', '5862901004', '59-200-9714');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Menard', 'Beswetherick', 'mbeswetherickd@wiley.com', '9277580437', '08-932-7768');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Phelia', 'Brolly', 'pbrollye@mapquest.com', '6201444030', '27-906-8048');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Northrup', 'McMurty', 'nmcmurtyf@devhub.com', '4963808873', '44-567-8588');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Imogen', 'Crocken', 'icrockeng@house.gov', '5458007893', '09-642-8160');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Rafaelita', 'Krystof', 'rkrystofh@friendfeed.com', '9636255152', '74-832-2650');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Ammamaria', 'Dignall', 'adignalli@live.com', '3662498706', '62-519-2372');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Kendre', 'Rhymes', 'krhymesj@woothemes.com', '3339827406', '11-384-0187');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Nicol', 'Lakeman', 'nlakemank@acquirethisname.com', '6354745605', '80-799-3579');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Lisbeth', 'Saffer', 'lsafferl@japanpost.jp', '4019158548', '00-092-4747');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Channa', 'Kenzie', 'ckenziem@blinklist.com', '4112091654', '53-564-6318');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Selinda', 'Spillane', 'sspillanen@marriott.com', '9322068282', '62-017-3703');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Ardisj', 'Keilloh', 'akeilloho@phpbb.com', '6345594564', '23-452-0233');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Agnesse', 'McLevie', 'amcleviep@exblog.jp', '9186155981', '98-180-7514');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Alix', 'Meffin', 'ameffinq@jiathis.com', '4893576788', '90-372-7004');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Karena', 'Crambie', 'kcrambier@etsy.com', '4431432687', '96-241-8067');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Barbette', 'Antley', 'bantleys@360.cn', '7409842511', '76-344-3377');
insert into individuals (firstname, lastname, email, phone, TRN) values ('Lucas', 'Yaus', 'lyaust@plala.or.jp', '8744773989', '92-616-2781');


insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (30, 'Jaguar', 'XK Series', '1997-04-29 05:33:46', 1, '5203395810');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (9, 'GMC', 'Sonoma Club', '2013-04-14 19:19:50', 0, '6132909168');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (5, 'Chevrolet', 'Express 1500', '2003-01-06 11:17:56', 1, '2072367115');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (1, 'Dodge', 'Avenger', '1998-03-06 19:42:21', 0, '8298359844');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (23, 'BMW', '1 Series', '2008-10-09 23:08:59', 1, '6086865434');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (16, 'Mitsubishi', '3000GT', '1991-11-11 23:45:55', 0, '7220825676');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (19, 'Volvo', 'S40', '2006-05-28 07:21:01', 1, '6613348732');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (4, 'BMW', 'Z4', '1991-11-30 11:56:24', 1, '1120104505');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (19, 'Mazda', 'Miata MX-5', '1997-07-01 03:08:05', 1, '6456597285');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (28, 'Lexus', 'IS', '2014-05-02 06:58:15', 0, '9667980324');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (1, 'Plymouth', 'Roadrunner', '2004-09-13 02:21:46', 0, '5913519965');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (1, 'Volkswagen', 'Passat', '1994-02-08 03:24:09', 1, '7381472619');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (14, 'Toyota', 'Corolla', '1997-08-07 21:12:37', 1, '0644480157');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (12, 'BMW', 'X6 M', '2002-08-14 23:43:16', 1, '9756655860');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (30, 'Land Rover', 'Discovery Series II', '2006-03-23 08:43:00', 1, '0231600879');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (5, 'Nissan', '240SX', '2011-11-30 07:38:31', 1, '9342010830');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (16, 'Dodge', 'Stratus', '2008-03-14 07:41:09', 1, '7529995316');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (7, 'Chevrolet', 'SSR', '1993-11-22 18:09:38', 0, '1024267458');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (11, 'Ford', 'ZX2', '2012-01-30 01:05:55', 0, '3782395360');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (20, 'Honda', 'Insight', '1993-07-09 05:17:06', 0, '9488677589');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (18, 'Dodge', 'Ram 3500', '1999-02-22 15:23:42', 0, '6445435009');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (10, 'Mercury', 'Grand Marquis', '2003-02-17 04:41:18', 1, '4830322144');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (29, 'Ford', 'Expedition EL', '2011-12-24 11:16:46', 1, '7670476354');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (24, 'Mercury', 'Capri', '2008-02-23 08:56:22', 0, '8027574501');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (12, 'Mitsubishi', 'Pajero', '2002-08-01 04:11:05', 1, '7150430554');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (28, 'Audi', 'Quattro', '2006-07-16 11:06:09', 1, '6704422145');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (23, 'Dodge', 'Nitro', '2001-07-02 20:15:05', 0, '1460409604');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (19, 'Toyota', 'Celica', '2010-07-14 23:03:10', 0, '9202405557');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (14, 'Land Rover', 'LR2', '2010-03-11 03:30:59', 1, '4513508663');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (28, 'BMW', 'X3', '1992-02-27 19:20:35', 0, '0362271542');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (12, 'Audi', 'Allroad', '2001-07-03 23:29:03', 1, '3358871738');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (10, 'Maybach', '57', '2013-06-14 01:54:06', 1, '0419179429');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (20, 'Mitsubishi', 'Truck', '2012-09-05 22:10:43', 1, '2972729773');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (10, 'Mazda', '626', '2004-11-30 11:18:33', 1, '1531545572');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (30, 'MINI', 'Clubman', '1992-07-14 18:57:45', 1, '8846027817');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (16, 'Lincoln', 'MKS', '2004-11-14 00:49:33', 0, '6795450279');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (10, 'Oldsmobile', 'Aurora', '2003-12-12 12:40:23', 0, '5526120619');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (15, 'Nissan', 'JUKE', '1997-01-18 11:00:01', 0, '7265685008');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (19, 'Buick', 'Century', '2012-06-26 20:05:54', 0, '9309870184');
insert into vehicules (id_owner, manufacturer, model, manufacturing_date, status, license_number) values (3, 'Volkswagen', 'Jetta', '2007-09-28 15:46:33', 1, '1033840971');


insert into sales (id_employee, id_vehicule, price, sale_date) values (4, 13, 22438.75, '2014-05-14 18:12:32');
insert into sales (id_employee, id_vehicule, price, sale_date) values (7, 14, 15003.53, '1994-04-30 11:07:18');
insert into sales (id_employee, id_vehicule, price, sale_date) values (7, 4, 16249.84, '2007-06-22 13:24:56');
insert into sales (id_employee, id_vehicule, price, sale_date) values (4, 10, 6342.0, '2007-04-26 20:01:56');
insert into sales (id_employee, id_vehicule, price, sale_date) values (2, 11, 18620.42, '2008-03-25 19:38:47');
insert into sales (id_employee, id_vehicule, price, sale_date) values (4, 18, 942.81, '2011-02-15 00:22:19');
insert into sales (id_employee, id_vehicule, price, sale_date) values (10, 15, 27725.77, '2008-03-04 15:21:31');
insert into sales (id_employee, id_vehicule, price, sale_date) values (7, 9, 5944.54, '2008-10-25 18:09:51');
insert into sales (id_employee, id_vehicule, price, sale_date) values (7, 7, 17442.77, '1995-04-10 07:15:32');
insert into sales (id_employee, id_vehicule, price, sale_date) values (4, 21, 26748.88, '2001-11-10 06:56:06');
insert into sales (id_employee, id_vehicule, price, sale_date) values (2, 24, 20629.76, '2011-11-16 10:41:23');
insert into sales (id_employee, id_vehicule, price, sale_date) values (10, 8, 19948.35, '2008-05-05 17:44:58');
insert into sales (id_employee, id_vehicule, price, sale_date) values (10, 2, 6768.81, '2013-01-02 14:23:59');
insert into sales (id_employee, id_vehicule, price, sale_date) values (4, 19, 11431.44, '1995-04-10 15:29:06');
insert into sales (id_employee, id_vehicule, price, sale_date) values (10, 29, 25313.79, '1995-01-22 03:22:08');


insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 17, 71.94, '2015-01-18 12:11:05', '2015-02-01 09:26:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 28, 277.91, '2014-09-06 22:30:19', '2014-09-12 04:26:47');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 20, 712.14, '2016-12-30 15:40:56', '2016-12-31 19:44:01');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 28, 914.14, '2016-10-27 13:23:24', '2016-11-04 06:12:28');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 3, 1165.97, '2016-10-25 08:44:01', '2016-11-23 10:49:00');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 18, 973.1, '2018-03-25 07:26:46', '2018-04-15 23:03:03');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 19, 1289.85, '2016-06-12 22:35:55', '2016-06-30 10:34:44');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 8, 288.63, '2015-11-19 04:02:12', '2015-12-04 23:52:53');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 24, 1003.47, '2018-01-30 00:06:23', '2018-02-03 12:10:17');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 29, 738.87, '2017-07-14 08:31:20', '2017-07-16 18:52:04');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 21, 930.84, '2017-05-22 18:08:45', '2017-06-03 13:52:40');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 14, 1181.96, '2014-09-04 11:55:38', '2014-09-15 04:14:03');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 3, 778.44, '2018-04-07 00:01:37', '2018-04-07 07:56:58');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 16, 505.94, '2017-12-12 14:40:22', '2017-12-25 20:00:10');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 30, 34.99, '2015-08-09 07:58:02', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 30, 402.31, '2016-01-27 21:56:53', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 30, 325.72, '2018-03-17 00:57:37', '2018-04-05 03:07:58');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 4, 768.49, '2017-09-09 20:04:09', '2017-09-14 01:45:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 9, 765.6, '2018-04-22 22:43:54', '2018-05-06 20:15:58');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 6, 1238.11, '2014-08-10 18:51:39', '2014-08-31 08:57:52');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 3, 617.45, '2015-09-23 16:07:37', '2015-10-17 20:29:26');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 7, 239.31, '2018-01-20 17:07:14', '2018-01-27 10:58:00');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 7, 315.77, '2016-01-07 17:01:57', '2016-01-14 19:24:39');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 10, 869.26, '2016-10-29 15:49:53', '2016-11-05 21:53:16');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 1, 1326.53, '2016-10-02 09:55:28', '2016-10-19 02:08:43');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 21, 81.09, '2016-12-21 06:22:39', '2017-01-09 21:35:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 17, 267.78, '2015-10-23 12:03:29', '2015-11-22 02:42:15');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 12, 1444.08, '2016-11-26 02:36:54', '2016-12-19 13:02:12');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 11, 1428.99, '2017-07-28 04:53:38', '2017-08-03 15:51:53');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 27, 679.64, '2017-09-24 14:18:14', '2017-10-05 10:26:17');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 4, 1268.03, '2017-10-06 04:51:16', '2017-10-18 03:36:21');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 11, 1287.58, '2015-03-12 17:59:31', '2015-04-10 11:52:23');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 24, 242.86, '2018-01-01 21:45:09', '2018-01-28 16:01:43');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 25, 699.1, '2017-04-07 03:11:42', '2017-04-15 19:35:11');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 15, 1017.31, '2018-01-20 14:12:09', '2018-01-25 04:20:49');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 6, 1206.85, '2016-10-28 22:41:09', '2016-10-31 04:22:30');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 10, 1434.12, '2015-12-15 23:18:42', '2015-12-29 04:11:03');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 13, 327.79, '2017-04-26 07:24:56', '2017-05-03 12:04:45');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 25, 857.27, '2016-06-21 02:57:42', '2016-06-28 04:11:18');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 27, 1307.58, '2015-06-18 12:33:19', '2015-06-25 13:58:44');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 9, 691.57, '2015-11-13 21:39:45', '2015-11-15 21:13:51');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 25, 698.48, '2017-10-12 12:53:46', '2017-10-24 14:51:53');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 16, 955.92, '2017-07-30 23:54:36', '2017-08-24 23:48:20');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 14, 361.2, '2015-12-04 09:39:37', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 15, 521.08, '2014-07-19 10:12:01', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 10, 1441.08, '2014-07-13 14:13:06', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 5, 522.48, '2014-08-21 03:49:17', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 19, 643.92, '2015-08-22 00:11:57', '2015-09-14 22:35:34');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 17, 186.64, '2014-06-04 01:23:19', '2014-06-23 23:05:53');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 14, 44.01, '2015-01-11 23:57:41', '2015-01-29 14:15:33');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 18, 1358.51, '2016-02-13 15:37:22', '2016-02-20 21:30:12');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 17, 1256.54, '2017-03-10 02:05:33', '2017-03-17 04:12:12');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 26, 502.19, '2016-09-07 12:56:59', '2016-09-29 23:11:32');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 23, 701.35, '2017-10-20 22:41:05', '2017-11-09 20:12:56');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 6, 1356.9, '2014-06-09 03:23:49', '2014-07-04 12:39:47');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 23, 666.57, '2015-12-02 03:13:18', '2015-12-18 16:24:33');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 27, 472.32, '2014-10-06 06:40:22', '2014-10-10 21:03:22');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 25, 969.59, '2015-07-19 15:19:17', '2015-07-21 12:00:10');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 7, 90.05, '2016-10-05 14:01:35', '2016-11-01 13:16:57');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 13, 466.89, '2015-01-14 19:39:43', '2015-01-24 02:22:18');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 15, 1286.54, '2015-07-15 23:21:30', '2015-07-19 01:57:20');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 15, 174.76, '2014-12-07 06:10:13', '2015-01-04 07:23:56');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 10, 546.08, '2014-12-24 09:12:51', '2015-01-20 14:34:00');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 5, 1074.8, '2015-11-29 18:48:25', '2015-12-25 15:21:53');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 6, 743.77, '2018-01-12 01:56:44', '2018-02-01 15:51:19');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 21, 1062.4, '2018-03-06 10:34:03', '2018-04-02 22:53:25');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 5, 1305.12, '2015-10-25 20:28:51', '2015-11-24 13:57:09');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 13, 1224.46, '2017-06-19 05:50:48', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 8, 875.5, '2017-10-31 12:36:41', '2017-11-06 05:57:21');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 26, 755.46, '2018-01-08 07:41:40', '2018-01-19 19:33:19');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 28, 137.35, '2016-10-22 19:09:07', '2016-11-11 01:47:49');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 17, 458.51, '2017-06-16 07:06:00', '2017-07-04 13:19:13');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 28, 1411.5, '2015-07-21 04:48:43', '2015-07-28 18:04:49');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 26, 934.02, '2017-06-06 03:32:47', '2017-06-11 14:12:09');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 13, 791.12, '2017-04-28 22:02:25', '2017-05-25 14:57:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 7, 1293.18, '2014-11-26 09:31:55', '2014-12-09 07:41:07');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 28, 732.31, '2017-08-23 11:08:07', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 11, 546.9, '2015-07-19 20:04:37', '2015-07-30 21:28:54');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 1, 898.88, '2015-03-31 12:41:45', '2015-04-15 03:30:24');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 15, 733.36, '2016-03-01 21:15:47', '2016-03-12 01:41:23');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 13, 1325.06, '2014-08-02 14:56:21', '2014-08-16 15:30:52');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 15, 522.85, '2015-12-27 16:58:47', '2016-01-21 01:55:54');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 30, 1327.5, '2017-05-04 20:26:33', '2017-05-06 04:49:50');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 12, 719.68, '2015-09-30 21:12:36', '2015-10-11 06:42:44');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 23, 368.1, '2017-01-29 04:45:08', '2017-02-22 22:03:24');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 8, 67.81, '2017-10-04 04:12:23', '2017-10-13 23:33:29');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 8, 938.18, '2017-11-17 17:56:14', '2017-12-14 07:25:30');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 4, 827.76, '2016-10-24 09:18:06', '2016-11-03 13:08:20');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 7, 31.67, '2015-08-01 01:14:06', '2015-08-20 06:13:57');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 5, 1202.3, '2014-07-23 20:15:48', '2014-08-14 06:21:58');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 30, 271.23, '2017-09-10 15:33:06', '2017-10-10 15:05:51');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 20, 855.23, '2014-10-05 07:53:30', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 9, 128.78, '2016-06-03 17:00:35', '2016-06-09 09:54:20');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 7, 1186.76, '2016-09-23 04:08:51', '2016-10-08 20:47:21');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 6, 907.56, '2017-06-16 08:55:14', '2017-06-29 21:58:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 7, 865.7, '2016-08-17 19:04:44', '2016-09-14 05:20:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 8, 817.83, '2016-10-24 21:25:41', '2016-11-19 18:04:58');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 5, 800.46, '2014-09-28 21:39:51', '2014-10-15 23:49:49');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 2, 1497.84, '2017-06-08 08:44:31', '2017-07-04 11:43:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 2, 191.86, '2016-03-30 22:20:32', '2016-04-01 07:19:06');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 12, 1263.48, '2016-12-14 13:28:42', '2016-12-24 02:53:54');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 17, 1198.53, '2017-03-22 13:31:54', '2017-03-23 02:21:57');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 22, 169.01, '2016-11-04 12:59:13', '2016-11-15 21:10:25');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 23, 568.01, '2018-04-29 20:57:29', '2018-05-25 08:30:40');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 24, 1223.61, '2017-09-23 20:14:19', '2017-09-29 21:58:40');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 10, 568.61, '2017-08-18 03:35:29', '2017-08-26 06:15:33');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 5, 1170.49, '2016-06-05 22:12:49', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 1, 676.54, '2017-05-17 18:24:36', '2017-06-12 01:00:02');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 13, 1306.94, '2016-11-13 17:36:20', '2016-11-18 06:44:23');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 28, 687.84, '2015-07-08 10:38:52', '2015-07-16 09:37:25');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 21, 523.75, '2017-01-06 20:38:51', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 7, 1299.63, '2018-05-29 08:17:18', '2018-06-25 00:02:26');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 15, 77.56, '2016-02-07 07:44:16', '2016-02-10 07:01:55');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 13, 664.21, '2017-09-29 09:56:11', '2017-09-30 21:24:00');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 20, 861.24, '2015-04-13 17:06:29', '2015-04-22 16:54:51');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 6, 1382.25, '2016-02-11 02:41:10', '2016-02-23 18:16:26');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 17, 942.3, '2014-06-18 19:27:26', '2014-07-11 23:36:43');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 24, 76.43, '2015-08-16 17:55:15', '2015-08-27 01:31:32');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 21, 1274.73, '2018-01-04 15:48:30', '2018-01-31 22:55:45');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 19, 526.95, '2017-07-30 08:46:10', '2017-08-21 16:15:57');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 7, 610.34, '2016-05-23 07:32:20', '2016-06-17 16:49:14');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 21, 596.76, '2016-08-11 17:51:27', '2016-08-28 17:42:36');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 8, 776.96, '2016-09-27 12:22:12', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 29, 702.15, '2016-12-03 01:06:37', '2016-12-28 03:35:00');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 30, 431.44, '2015-05-01 06:37:38', '2015-05-12 23:33:51');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 7, 107.64, '2017-03-02 10:08:00', '2017-03-16 14:53:02');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 3, 1042.79, '2018-05-24 10:50:03', '2018-05-25 01:49:06');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 24, 1263.45, '2014-06-16 15:19:16', '2014-06-18 10:52:42');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 14, 766.0, '2016-04-25 17:10:53', '2016-04-25 21:33:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 30, 131.3, '2015-05-09 12:34:50', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 20, 1328.03, '2018-04-08 15:54:33', '2018-04-30 19:55:13');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 18, 787.48, '2016-04-08 12:45:39', '2016-04-18 01:11:54');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 19, 1128.19, '2016-03-04 11:44:48', '2016-03-07 04:43:34');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 14, 189.84, '2014-12-19 04:41:43', '2014-12-23 02:00:50');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 22, 139.93, '2018-01-13 05:01:20', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 7, 124.41, '2016-03-08 02:26:58', '2016-03-15 16:46:21');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 23, 1436.13, '2016-03-10 01:59:37', '2016-03-23 04:47:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 30, 1083.87, '2014-10-17 03:24:38', '2014-10-28 05:07:17');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 2, 216.07, '2015-06-14 00:23:40', '2015-06-15 23:10:57');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 17, 1182.02, '2015-09-13 21:02:33', '2015-09-20 22:04:33');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 8, 1344.1, '2015-03-12 15:22:46', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 24, 593.64, '2015-01-03 21:42:30', '2015-02-01 15:48:05');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 29, 1299.04, '2015-11-28 08:22:40', '2015-12-23 15:57:58');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 11, 131.64, '2015-06-20 22:55:20', '2015-06-28 19:34:45');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 9, 1135.75, '2016-07-20 05:38:26', '2016-08-06 12:42:37');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 22, 952.13, '2016-01-13 02:47:30', '2016-02-04 18:38:11');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 7, 1453.14, '2015-11-17 02:52:42', '2015-11-26 16:07:10');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 14, 297.26, '2015-07-10 18:08:21', '2015-07-29 11:44:00');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 21, 509.23, '2014-08-30 01:49:31', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 7, 830.17, '2017-10-14 08:58:53', '2017-10-24 16:19:49');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 25, 929.39, '2017-05-24 01:23:54', '2017-06-14 18:27:28');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 30, 468.06, '2014-07-08 09:54:32', '2014-08-06 22:41:53');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 29, 279.29, '2018-02-22 06:32:04', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 22, 399.47, '2015-01-09 02:58:31', '2015-01-29 14:15:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 9, 153.95, '2015-12-18 16:01:51', '2015-12-19 17:09:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 17, 456.1, '2017-02-05 13:40:44', '2017-02-06 18:23:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 2, 166.94, '2017-09-27 20:39:35', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 24, 1290.07, '2018-02-13 14:26:45', '2018-03-05 06:06:37');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 8, 840.0, '2017-09-17 05:18:13', '2017-09-23 11:02:09');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 24, 1387.25, '2017-02-27 01:14:10', '2017-03-25 02:30:06');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 28, 557.21, '2014-08-17 14:55:01', '2014-09-02 14:06:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 7, 1270.1, '2016-11-30 19:25:08', '2016-12-27 19:38:45');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 26, 1271.7, '2017-10-07 05:01:52', '2017-10-14 17:50:59');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 18, 1299.9, '2017-12-24 03:17:34', '2018-01-07 23:43:50');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 22, 1082.1, '2015-06-07 07:05:55', '2015-06-19 08:55:19');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 16, 1061.81, '2017-11-18 00:56:21', '2017-12-13 09:19:14');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 23, 641.07, '2016-03-26 11:15:45', '2016-04-13 12:43:23');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 3, 324.0, '2014-12-28 08:05:24', '2015-01-08 17:19:17');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 18, 1387.86, '2017-07-29 10:20:46', '2017-08-27 13:52:34');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 23, 1083.37, '2014-11-20 17:39:55', '2014-11-29 10:39:28');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 24, 898.9, '2017-09-14 16:20:53', '2017-10-14 05:20:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 2, 834.01, '2015-10-12 12:23:45', '2015-11-02 11:57:28');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 13, 1447.74, '2014-06-13 18:58:45', '2014-06-26 04:49:51');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 2, 1176.04, '2018-04-24 12:13:37', '2018-05-04 22:44:56');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 15, 503.47, '2017-04-23 23:48:39', '2017-05-20 22:22:59');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 19, 441.21, '2014-10-31 15:03:13', '2014-11-02 05:33:21');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 19, 365.96, '2017-03-14 13:24:59', '2017-04-10 10:35:52');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 5, 1329.45, '2017-04-26 05:03:02', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 19, 1057.03, '2017-02-21 00:27:03', '2017-03-07 09:31:03');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 9, 702.17, '2016-05-22 08:34:17', '2016-06-14 01:09:05');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 30, 1389.42, '2017-08-20 06:15:13', '2017-09-06 13:33:58');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 16, 854.01, '2017-01-18 02:37:15', '2017-02-09 07:48:05');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 1, 456.15, '2014-06-15 19:09:41', '2014-07-03 12:15:09');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 21, 745.87, '2016-08-01 04:25:02', null);
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 6, 1470.7, '2017-09-14 09:07:54', '2017-09-27 18:30:52');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 15, 1238.45, '2017-08-31 10:04:23', '2017-09-06 06:40:12');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 22, 323.23, '2015-11-27 16:39:22', '2015-12-24 11:29:40');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 24, 1013.35, '2014-07-26 15:27:00', '2014-08-05 21:05:08');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 15, 307.11, '2017-07-16 15:18:53', '2017-07-30 00:51:13');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 17, 1452.96, '2014-12-07 16:53:03', '2014-12-23 11:56:48');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 24, 167.61, '2017-11-26 05:24:40', '2017-12-22 18:05:50');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (1, 27, 1298.04, '2015-09-20 05:25:24', '2015-09-26 03:27:56');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 12, 476.89, '2015-10-11 10:41:28', '2015-11-04 17:58:38');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (9, 8, 780.59, '2015-12-08 05:12:42', '2015-12-19 05:55:37');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 6, 167.44, '2016-10-13 07:10:09', '2016-10-25 05:32:26');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 24, 254.61, '2014-08-16 07:02:57', '2014-09-08 02:27:46');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (5, 29, 429.07, '2017-11-06 22:49:17', '2017-11-07 23:29:56');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (8, 8, 436.58, '2016-02-18 17:50:42', '2016-02-29 09:44:32');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (3, 3, 1297.86, '2018-05-18 00:49:35', '2018-05-27 07:11:18');
insert into repairs (id_employee, id_vehicule, cost, start_date, end_date) values (6, 29, 1443.74, '2015-08-28 06:43:22', '2015-09-17 21:42:59');




/* -- small dataset to test (not up to date)

insert into employees (id, firstname, lastname, email, phone, TRN, category) values (2, 'Jojo', 'Stitch', 'jstitch0@typepad.com', '7264255419', '5871143555', 1);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (3, 'Rebeca', 'Cloute', 'rcloute1@tumblr.com', '3809896661', '0549290095', 1);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (4, 'Randolph', 'Duer', 'rduer2@rediff.com', '9879295571', '7695482374', 0);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (5, 'Zacharia', 'Yegorchenkov', 'zyegorchenkov3@ebay.co.uk', '5172441715', '1145087884', 0);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (6, 'Cortie', 'Clendennen', 'cclendennen4@1688.com', '6719993106', '3684875104', 1);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (7, 'Mickie', 'Hehnke', 'mhehnke5@taobao.com', '9948143275', '3951697938', 0);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (8, 'Rachele', 'McAllen', 'rmcallen6@state.gov', '8198006637', '8717739047', 0);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (9, 'Engelbert', 'Hounsome', 'ehounsome7@abc.net.au', '2151255006', '4406284788', 0);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (10, 'Rivi', 'Britnell', 'rbritnell8@nyu.edu', '5387511575', '6611855122', 0);
insert into employees (id, firstname, lastname, email, phone, TRN, category) values (11, 'Zacharias', 'Grinstead', 'zgrinstead9@weibo.com', '8104541308', '8167574431', 1);


insert into individuals (id_owner, firstname, lastname, email, phone, TRN) values (2, 'Jessalyn', 'Franzel', 'jfranzel0@oaic.gov.au', '8573556423', '9580138516');
insert into individuals (id_owner, firstname, lastname, email, phone, TRN) values (3, 'Keven', 'Meric', 'kmeric1@howstuffworks.com', '4156926891', '5890839330');
insert into individuals (id_owner, firstname, lastname, email, phone, TRN) values (4, 'Adrea', 'Himpson', 'ahimpson2@zdnet.com', '4052532342', '6500844270');
insert into individuals (id_owner, firstname, lastname, email, phone, TRN) values (5, 'Cristal', 'Mathonnet', 'cmathonnet3@zdnet.com', '7762956425', '9328015499');
insert into individuals (id_owner, firstname, lastname, email, phone, TRN) values (6, 'Davita', 'Bonanno', 'dbonanno4@weibo.com', '5951956703', '3863533925');

insert into vehicules (id_vehicule, id_owner, manufacturer, model, manufacturing_date, status, license_number) values (1, 2, 'Dodge', 'Ram 1500', '1985-08-31 07:23:15', 0, '6757410230');
insert into vehicules (id_vehicule, id_owner, manufacturer, model, manufacturing_date, status, license_number) values (2, 3, 'Chevrolet', 'Impala', '1993-12-06 02:12:53', 1, '8815979476');
insert into vehicules (id_vehicule, id_owner, manufacturer, model, manufacturing_date, status, license_number) values (3, 3, 'Chevrolet', 'G-Series G10', '1999-11-10 01:09:58', 0, '2446816045');
insert into vehicules (id_vehicule, id_owner, manufacturer, model, manufacturing_date, status, license_number) values (4, 6, 'Mercedes-Benz', 'W201', '1998-08-04 13:26:46', 1, '7014396048');
insert into vehicules (id_vehicule, id_owner, manufacturer, model, manufacturing_date, status, license_number) values (5, 4, 'Mercedes-Benz', 'CLS-Class', '2013-12-31 17:55:41', 0, '8084484591');
insert into vehicules (id_vehicule, id_owner, manufacturer, model, manufacturing_date, status, license_number) values (6, 5, 'Buick', 'LeSabre', '1986-08-09 06:36:21', 1, '6750579884');


insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (2, 4, 4, 942.68, '2000-11-06 02:53:10', '2000-11-16 17:07:23');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (3, 10, 2, 118.95, '2005-01-31 14:48:10', '2005-02-09 22:51:09');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (4, 7, 3, 118.53, '2002-01-07 14:45:05', '2002-01-09 07:58:12');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (5, 8, 6, 675.62, '2004-12-09 03:41:15', '2004-12-19 08:30:15');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (6, 5, 5, 655.91, '2003-08-14 10:07:36', '2003-08-20 00:36:27');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (7, 9, 2, 874.15, '2007-04-19 19:02:55', '2007-04-29 00:24:53');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (8, 10, 4, 746.85, '2011-10-17 10:42:39', '2011-10-21 00:46:44');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (9, 8, 5, 849.75, '2005-01-26 00:53:38', '2005-01-30 18:58:24');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (10, 7, 5, 269.85, '2005-08-20 10:56:15', '2005-08-27 01:01:10');
insert into repairs (id_repair, id_employee, id_vehicule, cost, start_date, end_date) values (11, 10, 6, 863.83, '2002-07-18 14:14:26', '2002-07-22 17:38:49');

insert into sales (id_sale, id_employee, id_vehicule, price, sale_date) values (2, 11, 1, 778.76, '2005-03-11 17:27:16');
insert into sales (id_sale, id_employee, id_vehicule, price, sale_date) values (3, 2, 2, 736.64, '2008-01-09 21:02:19');
insert into sales (id_sale, id_employee, id_vehicule, price, sale_date) values (4, 6, 5, 246.25, '2005-04-24 04:43:46');
*/
