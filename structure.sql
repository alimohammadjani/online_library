DROP TABLE IF EXISTS books;
CREATE TABLE IF NOT EXISTS books(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(30),
title VARCHAR(50),
description VARCHAR(60),
esrb_rating_id INTEGER,
publisher_id INTEGER
);

DROP TABLE IF EXISTS authors;
CREATE TABLE IF NOT EXISTS authors(
id INTEGER PRIMARY KEY AUTOINCREMENT,
national_code varchar(20),
name varchar(30),
last_name varchar(30),
birthday varchar(15),
grade varchar(30));

DROP TABLE IF EXISTS translators;
CREATE TABLE IF NOT EXISTS translators(
id INTEGER PRIMARY KEY AUTOINCREMENT,
national_code varchar(20),
name varchar(30),
last_name varchar(30),
grade varchar(30));

DROP TABLE IF EXISTS esrb_ratings;
CREATE TABLE IF NOT EXISTS esrb_ratings(
id INTEGER PRIMARY KEY AUTOINCREMENT,
esrb_name INTEGER);

DROP TABLE IF EXISTS publishers;
CREATE TABLE IF NOT EXISTS publishers(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name varchar(30),
address varchar(50),
phone_number varchar(15),
fax_number varchar(15),
email varchar(50),
establish_date varchar(15));

DROP TABLE IF EXISTS resources;
CREATE TABLE IF NOT EXISTS resources(
id INTEGER PRIMARY KEY AUTOINCREMENT,
title varchar(30),
type varchar(30),
establish_date varchar(30));

DROP TABLE IF EXISTS genres;
CREATE TABLE IF NOT EXISTS genres(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name varchar(20));

DROP TABLE IF EXISTS languages;
CREATE TABLE IF NOT EXISTS languages(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name varchar(30));

DROP TABLE IF EXISTS book_author;
CREATE TABLE IF NOT EXISTS book_author(
book_id INTEGER ,
author_id INTEGER);

DROP TABLE IF EXISTS book_translator;
CREATE TABLE IF NOT EXISTS book_translator(
book_id INTEGER ,
translator_id INTEGER);

DROP TABLE IF EXISTS book_resource;
CREATE TABLE IF NOT EXISTS book_resource(
book_id INTEGER ,
resource_id INTEGER);

DROP TABLE IF EXISTS book_language;
CREATE TABLE IF NOT EXISTS book_language(
book_id INTEGER ,
language_id INTEGER);

DROP TABLE IF EXISTS book_genre;
CREATE TABLE IF NOT EXISTS book_genre(
book_id INTEGER ,
genre_id INTEGER);













-- درج رتبه‌های سنی ESRB
INSERT INTO esrb_ratings (esrb_name) VALUES 
('E'), ('E10+'), ('T'), ('M'), ('AO');


-- درج ناشران
INSERT INTO publishers (name, address, phone_number, fax_number, email, establish_date) VALUES 
('نشر چشمه', 'تهران، خیابان انقلاب', '021-66701111', '021-66701112', 'info@cheshmeh.ir', '1993'),
('انتشارات امیرکبیر', 'تهران، خیابان ناصرخسرو', '021-33112233', '021-33112234', 'info@amirkabir.ir', '1949'),
('نشر نی', 'تهران، خیابان کریمخان', '021-88901234', '021-88901235', 'info@nashreney.ir', '1983'),
('انتشارات علمی و فرهنگی', 'تهران، خیابان انقلاب', '021-66405555', '021-66405556', 'info@scc.ir', '1984'),
('نشر مرکز', 'تهران، خیابان فاطمی', '021-88911234', '021-88911235', 'info@markaz.ir', '1986');


-- درج زبان‌ها
INSERT INTO languages (name) VALUES 
('فارسی'), ('انگلیسی'), ('عربی'), ('فرانسوی'), ('آلمانی');


-- درج ژانرها
INSERT INTO genres (name) VALUES 
('رمان'), ('داستان کوتاه'), ('تاریخی'), ('علمی-تخیلی'), ('فلسفه');


-- درج نویسندگان
INSERT INTO authors (national_code, name, last_name, birthday, grade) VALUES 
('0012345678', 'صادق', 'هدایت', '1281/02/17', 'نویسنده برجسته'),
('0012345679', 'غلامحسین', 'ساعدی', '1314/12/24', 'نمایشنامه نویس'),
('0012345680', 'جلال', 'آل احمد', '1302/02/11', 'نویسنده و مترجم'),
('0012345681', 'سیمین', 'دانشور', '1300/04/08', 'رمان نویس'),
('0012345682', 'محمدعلی', 'جمالزاده', '1274/01/17', 'پدر داستان نویسی مدرن'),
('0012345683', 'احمد', 'محمود', '1310/06/04', 'رمان نویس'),
('0012345684', 'هوشنگ', 'مرادی کرمانی', '1323/09/23', 'داستان نویس'),
('0012345685', 'زویا', 'پیرزاد', '1331/12/18', 'رمان نویس'),
('0012345686', 'رضا', 'امیرخانی', '1351/01/01', 'نویسنده معاصر'),
('0012345687', 'محمود', 'دولت آبادی', '1319/07/27', 'نویسنده شهیر');


-- درج مترجمان
INSERT INTO translators (national_code, name, last_name, grade) VALUES 
('0022345678', 'نجف', 'دریابندری', 'مترجم برجسته'),
('0022345679', 'رضا', 'رضایی', 'مترجم ادبی'),
('0022345680', 'مهدی', 'غبرایی', 'مترجم رمان'),
('0022345681', 'ابوالحسن', 'نجفی', 'مترجم و زبان شناس'),
('0022345682', 'علی', 'اصغر حکمت', 'مترجم کلاسیک'),
('0022345683', 'سروش', 'حبیبی', 'مترجم ادبیات'),
('0022345684', 'احمد', 'کریمی حکاک', 'مترجم و منتقد'),
('0022345685', 'مژده', 'دقیقی', 'مترجم معاصر'),
('0022345686', 'خشایار', 'دیهیمی', 'مترجم فلسفه'),
('0022345687', 'مریم', 'برادران', 'مترجم داستان');


-- درج منابع
INSERT INTO resources (title, type, establish_date) VALUES 
('کتابخانه ملی', 'کتابخانه', '1316'),
('آرشیو دیجیتال', 'دیجیتال', '1385'),
('مرکز اسناد', 'آرشیو', '1350'),
('کتابخانه دانشگاه تهران', 'کتابخانه', '1313'),
('کتابخانه مجلس', 'کتابخانه', '1304'),
('آرشیو مطبوعات', 'آرشیو', '1340'),
('کتابخانه دیجیتال', 'دیجیتال', '1390'),
('مرکز تحقیقات', 'تحقیقاتی', '1360'),
('آرشیو ملی', 'آرشیو', '1320'),
('کتابخانه عمومی', 'کتابخانه', '1330'),
('مرکز اسناد تاریخی', 'آرشیو', '1345'),
('کتابخانه تخصصی', 'کتابخانه', '1370'),
('آرشیو صوتی', 'آرشیو', '1380'),
('کتابخانه کودک', 'کتابخانه', '1365'),
('مرکز مطالعات', 'تحقیقاتی', '1375'),
('آرشیع تصویری', 'آرشیو', '1395'),
('کتابخانه هنر', 'کتابخانه', '1380'),
('مرکز اسناد فرهنگی', 'آرشیو', '1368'),
('کتابخانه علوم', 'کتابخانه', '1355'),
('آرشیو الکترونیک', 'دیجیتال', '1400'),
('کتابخانه پزشکی', 'کتابخانه', '1345'),
('مرکز اسناد علمی', 'آرشیو', '1372'),
('کتابخانه حقوق', 'کتابخانه', '1360'),
('آرشیو تاریخی', 'آرشیو', '1310'),
('کتابخانه اقتصادی', 'کتابخانه', '1385'),
('مرکز اسناد هنری', 'آرشیو', '1390'),
('کتابخانه روانشناسی', 'کتابخانه', '1378'),
('آرشیو ادبی', 'آرشیو', '1355'),
('کتابخانه فلسفه', 'کتابخانه', '1365'),
('مرکز اسناد مذهبی', 'آرشیو', '1348');


-- درج کتاب‌ها
INSERT INTO books (name, title, description, esrb_rating_id, publisher_id) VALUES 
('بوف کور', 'رمان نمادین', 'داستانی روانکاوانه از هدایت', 4, 1),
('مدیر مدرسه', 'نقد اجتماعی', 'داستانی از نظام آموزشی', 3, 2),
('سووشون', 'رمان تاریخی', 'داستان جنگ و مقاومت', 3, 3),
('شازده احتجاب', 'رمان مدرن', 'داستانی از افول اشرافیت', 4, 4),
('کلیدر', 'رمان حماسی', 'داستان زندگی روستاییان', 4, 5),
('دایی جان ناپلئون', 'کمدی اجتماعی', 'طنزی از جامعه ایرانی', 3, 1),
('چراغها را من خاموش می‌کنم', 'رمان خانوادگی', 'داستان زندگی زنان', 2, 2),
('سمفونی مردگان', 'رمان تراژیک', 'داستان خانواده‌ای در هم شکسته', 4, 3),
('همسایه‌ها', 'رمان اجتماعی', 'داستان مبارزات سیاسی', 4, 4),
('نفرین زمین', 'رمان روستایی', 'داستان تغییرات اجتماعی', 3, 5),
('شبهای تهران', 'رمان پلیسی', 'داستانی معمایی', 4, 1),
('ملت عشق', 'رمان عرفانی', 'داستان مولانا و شمس', 2, 2),
('من او', 'رمان عاشقانه', 'داستانی تاریخی', 3, 3),
('رازهای سرزمین من', 'رمان سیاسی', 'داستان انقلاب', 4, 4),
('اعترافات غلامان', 'رمان تاریخی', 'داستان دوران قاجار', 3, 5),
('بادبادک باز', 'رمان اجتماعی', 'داستان دوستی و خیانت', 4, 1),
('یک عاشقانه آرام', 'رمان عاشقانه', 'داستان زندگی زناشویی', 2, 2),
('پاییز فصل آخر سال است', 'رمان خانوادگی', 'داستان تحولات زندگی', 3, 3),
('نبرد قدرت', 'رمان سیاسی', 'داستان مبارزات قدرت', 4, 4),
('خانه ادریسی‌ها', 'رمان تاریخی', 'داستان خانواده‌ای قدیمی', 3, 5);


-- ارتباط کتاب‌ها با نویسندگان (۵ کتاب با ۲ نویسنده)
INSERT INTO book_author (book_id, author_id) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9),(10,10),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(1,5),(3,6),(7,10),(11,1),(20,2);

-- ارتباط کتاب‌ها با مترجمان
INSERT INTO book_translator (book_id, translator_id) VALUES 
(1, 1), (1, 2), (3, 3), (3, 4), (5, 5),
(5, 6), (2, 7), (2, 8), (4, 9), (4, 10),
(16, 6), (17, 7), (18, 8), (19, 9), (20, 10);

INSERT INTO book_resource (book_id, resource_id) VALUES 
(1, 1), (1, 2), (1, 3),
(2, 4), (2, 5), (2, 6),
(3, 7), (3, 8), (3, 9),
(4, 10), (4, 11), (4, 12),
(5, 13), (5, 14), (5, 15),
(6, 16), (6, 17), (6, 18),
(7, 19), (7, 20), (7, 21),
(8, 22), (8, 23), (8, 24),
(9, 25), (9, 26), (9, 27),
(10, 28), (10, 29), (10, 30),
(11, 1), (11, 4), (12, 7),
(12, 2), (13, 5), (13, 8),
(14, 3), (14, 6), (15, 9),
(15, 10), (16, 13), (16, 16),
(17, 11), (17, 14), (18, 17),
(18, 12),(19, 28);

-- ارتباط کتاب‌ها با زبان‌ها
INSERT INTO book_language (book_id, language_id) VALUES 
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
(6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
(11, 2), (12, 2), (13, 2), (14, 2), (15, 2),
(11, 4), (12, 4), (13,4), (14, 4), (15, 4),
(16, 3), (17, 3), (18, 3), (19, 4), (20, 5);

-- ارتباط کتاب‌ها با ژانرها
INSERT INTO book_genre (book_id, genre_id) VALUES 
(1, 1), (1, 2), (1, 3), (2, 1), (2, 2),
(2, 3), (3, 1), (3, 2), (3, 3), (4, 4),
(4,5), (5, 1), (5, 3), (6,4), (6,1),
(7, 1), (7,2), (8, 1), (8, 4), (9, 3),
(2, 1), (3,2), (4, 1), (5, 4), (11, 3),
(12, 1), (13,2), (14, 1), (15, 4), (16, 3);






