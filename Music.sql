show tables;

DROP TABLE IF EXISTS Comments_like_table;
DROP TABLE IF EXISTS Play;
DROP TABLE IF EXISTS Admins;
DROP TABLE IF EXISTS MapSS;
DROP TABLE IF EXISTS MapSAA;
DROP TABLE IF EXISTS Song_upload;
DROP TABLE IF EXISTS Comments ;
DROP TABLE IF EXISTS Songlist_content;
DROP TABLE IF EXISTS Collect_content;
DROP TABLE IF EXISTS Collect;
DROP TABLE IF EXISTS Songlist;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Singer;
DROP TABLE IF EXISTS Song_version;
DROP TABLE IF EXISTS Song;


create table Song 
(Song_id   int unsigned AUTO_INCREMENT NOT NULL,
Song_name	varchar(50) NOT NULL,
Lrc		varchar(255),
Album		varchar(50),
Release_time	date,
Song_tag	enum('流行','说唱','国风','摇滚','电子','民谣','R&B','轻音乐','古典','爵士') NOT NULL,
Isupload    enum('YES', 'NO') NOT NULL ,
primary key (Song_id));

create table Song_version
(Song_id   int unsigned,
Quality		enum('veryhigh','high','middle','low') NOT NULL,
Song_url	varchar(225) NOT NULL,
Primary key (Song_id, Quality),
foreign key (Song_id) references Song(Song_id) On delete cascade);

create table Singer
(Singer_id	int unsigned AUTO_INCREMENT NOT NULL,
Singer_name  varchar(20) NOT NULL,
Singer_gender	enum('男','女','不公开') NOT NULL,
Country		varchar(10),
Singer_introduction varchar(255),
Singer_photo varchar(225),
Primary key (Singer_id));

create table Users
(User_id  int unsigned AUTO_INCREMENT NOT NULL,
User_name	varchar(15) NOT NULL,
User_password  varchar(20) NOT NULL,
User_gender		enum('男','女','不公开') NOT NULL,
Phone_number    tinyint,
Email			varchar(30),
Birthday		date,
User_introduction	varchar(255),
Location		varchar(45),
User_photo		varchar(255),
Create_time		datetime NOT NULL,
Primary key(User_id),
unique (User_name));

create table Songlist
(Songlist_id	int unsigned AUTO_INCREMENT NOT NULL,
Songlist_title	varchar(20) NOT NULL,
Songlist_introduction varchar(255),
Songlist_photo		varchar(255),
Songlist_tag	enum('流行','说唱','国风','摇滚','电子','民谣','R&B','轻音乐','古典','爵士') NOT NULL,
Songlist_like	int unsigned NOT NULL DEFAULT '0',
primary key(Songlist_id),
unique (Songlist_title));

create table Collect 
(Collect_id		int unsigned AUTO_INCREMENT NOT NULL,
User_id			int unsigned,
Collect_time	datetime NOT NULL,
Collect_introduction	varchar(255),
Collect_photo	varchar(255),
Collect_like	int unsigned NOT NULL DEFAULT '0',
Collect_title	varchar(20) NOT NULL,
primary key (Collect_id, User_id),
foreign key (User_id) references Users (User_id) on delete cascade);

create table Collect_content
(Collect_id		int unsigned,
Song_id			int unsigned,
primary key (Collect_id, Song_id),
foreign key (Collect_id) references Collect (Collect_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);

create table Songlist_content
(Songlist_id		int unsigned,
Song_id				int unsigned,
primary key (Songlist_id, Song_id),
foreign key (Songlist_id) references Songlist (Songlist_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);

create table Comments
(Comment_id      int unsigned AUTO_INCREMENT NOT NULL,
Song_id			int unsigned,
Comment_time		datetime NOT NULL,
User_id				int unsigned,
Content				varchar(255) NOT NULL,
Comment_like		int unsigned NOT NULL DEFAULT '0',
primary key (Comment_id),
foreign key (User_id) references Users (User_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);

create table Song_upload
(Song_id		int unsigned,
User_id			int unsigned,
Permission		enum('YES', 'NO'),
Checked			enum('YES', 'NO'),
primary key (Song_id),
foreign key (User_id) references Users (User_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);

create table MapSAA
(Singer_id		int unsigned,
Album			varchar(50),
Album_picture	varchar(255),
primary key (Singer_id, Album),
foreign key (Singer_id) references Singer (Singer_id) on delete cascade);

create table MapSS
(Song_id		int unsigned ,
Singer_id		int unsigned ,
primary key (Singer_id, Song_id),
foreign key (Singer_id) references Singer (Singer_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);

create table Admins
(Admin_id		int unsigned AUTO_INCREMENT NOT NULL,
Admin_name		varchar(15) NOT NULL,
Admin_password	varchar(20) NOT NULL,
primary key (Admin_id),
unique (Admin_name));

create table Play
(Play_time	 datetime,
User_id 	int unsigned,
Song_id		int unsigned,
primary key (Play_time, User_id),
foreign key (Song_id) references Song (Song_id) on delete set null,
foreign key (User_id) references Users (User_id) on delete cascade);

create table Comments_like_table
(Comment_id   int unsigned,
User_id int unsigned,
Like_time   datetime,
primary key (Comment_id, User_id),
foreign key (Comment_id) references Comments(Comment_id) on delete cascade,
foreign key (User_id) references Users(User_id) on delete cascade);



