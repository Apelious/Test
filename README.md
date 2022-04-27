<h1 align="center"><font color="Blac">后端文档</font></h1>

<h2><font color="red">1、数据库设计表格</font></h2>
<br>
<ul>
<li><strong><font color="orange">Song</font></strong> (<font color="orange"><em>Song_id</font></em>, Song_name, Lrc, Album, Release_time, Song_tag)</li>
<br>
<li><strong><font color="orange">Song_version</font></strong> (<font color="orange"><em>Song_id, Quality</font></em>, Song_url)</li>
<br>
<li><strong><font color="orange">MapSAA</font></strong> (<font color="orange"><em>Singer_id, Album</font></em>, Album_picture)</li>
<br>
<li><strong><font color="orange">MapSS</font></strong> (<font color="orange"><em>Song_id, Singer_id</font></em>)</li>
<br>
<li><strong><font color="orange">Singer</font></strong> (<font color="orange"><em>Singer_id</font></em>, Singer_name, Singer_sex, Country, Singer_introduction, Singer_photo)</li>
<br>
<li><strong><font color="orange">Users</font></strong> (<font color="orange"><em>User_id</font></em>, User_name, User_password, User_sex, Phone_number, Email, Birthday, User_introduction, Location, User_photo, Create_time)</li>
<br>
<li> <strong><font color="orange">Comments</font></strong> (<font color="orange"><em>Comment_id</font></em>, Song_id, Comment_time, User_id, Content, Comment_like)</li>
<br>
<li> <strong><font color="orange">Comments_like_table</font></strong> (<font color="orange"><em>Comment_id, User_id</font></em>, Comment_like_time)</li>
<br>
<li><strong><font color="orange">Collect</font></strong> (<font color="orange"><em>User_id, Collect_id</font></em>, Collect_time, Collect_introduction, Collect_photo, Collect_like, Collect_title)</li>
<br>
<li><strong><font color="orange">Collect_content</font></strong>   (<font color="orange"><em>Collect_id, Song_id</font></em>)</li>
<br>
<li><strong><font color="orange">Songlist</font></strong> (<font color="orange"><em>Songlist_id</font></em>, Songlist_title, Songlist_introduction, Songlist_photo, Songlist_tag, Songlist_like)</li>
<br>
<li><strong><font color="orange">Songlist_content</font></strong>  (<font color="orange"><em>Songlist_id, Song_id</font></em>)</li>
<br>
<li><strong><font color="orange">Admins</font></strong> (<font color="orange"><em>Admin_id</font></em>, Admin_name, Admin_password)</li>
<br>
<li><strong><font color="orange">Song_upload</font></strong> (<font color="orange"><em>Song_id</font></em>, User_id, Permission, Checked)</li>
<br>
<li><strong><font color="orange">Play</font></strong>  (<font color="orange"><em>Play_time, User_id</font></em>, Song_id)</li>
</ul>
<br>

> 说明：
><ol>
><li>所有表中的所有属性的名称都是不重复的，防止产生理解偏差。</li>
><li>括号内黄色字体的属性代表主码</li>
></ol>

<br>
<br>
<br>
<br>

---
<br>

<h2><font color="red">2、数据库表格说明</font></h2>
<br>
<ol>
<li>

> <strong><font color="orange">Song</font></strong>------------------------这个表描述歌曲信息
>
>>Song_id------------------------每首歌的唯一标识符
>>
>>Song_name------------------------歌曲名字
>>
>>Lrc------------------------歌曲的歌词文件索引位置
>>
>>Album------------------------歌曲所属于的专辑
>>
>>Release_time------------------------歌曲发行时间
>>
>>Song_tag------------------------歌曲风格标签

</li>
<br>
<li>

> <strong><font color="orange">Song_version</font></strong>------------------------我们给每一首歌都安排了不同的音质版本
>
>>Song_id------------------------每首歌的唯一标识符
>>
>>Quality------------------------品质，定义为1,2,3,4 音质依次增加
>>
>>Song_url------------------------对应音质的歌曲文件索引位置

</li>
<br>
<li>

> <strong><font color="orange">MapSAA</font></strong>------------------------一张专辑应该有一张对应的专辑图片
> 
> >Singer_id------------------------每个歌手的唯一标识符
> >
> >Album------------------------专辑名称
> >
> >Album_picture------------------------专辑图片索引位置

</li>
<br>
<li>

> <strong><font color="orange">MapSS</font></strong>------------------------这个表描述歌手与歌曲的映射
>
>>Song_id------------------------每首歌的唯一标识符
>>  
>>Singer_id------------------------每个歌手的唯一标识符

</li>
<br>
<li>

> <strong><font color="orange">Singer</font></strong>------------------------这个表描述歌手信息
> >
> >Singer_id------------------------每个歌手的唯一标识符
> >
> >Singer_name------------------------歌手名字
> >
> >Singer_sex------------------------歌手性别
> >
> >Country------------------------歌手国籍
> >
> >Singer_introduction------------------------歌手简介
> >
> >Singer_photo------------------------歌手图片

</li>
<br>
<li>

> <strong><font color="orange">Users</font></strong>------------------------这个表描述用户信息
> >
> >User_id------------------------每个用户的唯一标识符
>>
> >User_name------------------------用户名字
>>
> >User_password------------------------用户密码
> >
> >User_sex------------------------用户性别
> >
> >Phone_number------------------------用户电话号码
> >
> >Email------------------------用户邮箱
> >
> >Birthday------------------------用户生日
> >
> >User_introduction------------------------用户简介
> >
> >Location------------------------用户所在地区
> >
> >User_photo------------------------用户头像索引位置
> >
> >Create_time------------------------用户创建时间

</li>
<br>
<li>

> <strong><font color="orange">Comments</font></strong>------------这个表描述对于一首歌曲的评论，我们将不再支持对于歌单的评论和评分，取而代之为对某个歌单的点赞量
> >
> >Comment_id------------------------每个评论的唯一标识符
> >
> >Song_id------------------------每首歌的唯一标识符
> >
> >Comment_time------------------------评论时间
> >
> >User_id------------------------评论用户ID
> >
> >Content------------------------评论内容
> >
> >Comment_like------------------------该条评论的点赞数

</li>
<br>
<li>

> <strong><font color="orange">Comments_like_table</font></strong>------------这个表记录了是谁在这条评论上点赞了
> >
> >Comment_id------------------------每个评论的唯一标识符
> >
> >User_id------------------------点赞用户ID
> >
> >Comment_like_time------------------------点赞时间

</li>
<br>
<li>

> <strong><font color="orange">Collect</font></strong>------------------------这个表描述用户对于歌曲的收藏信息，用户收藏多个歌单，将有同个用户的多条记录
> >
> >User_id------------------------每个用户的唯一标识符
> >
> >Collect_id------------------------该用户收藏的歌单标识符
> >
> >Collect_time------------------------歌单创建时间
> >
> >Collect_introduction------------------------歌单简介
> >
> >Collect_photo------------------------歌单封面图片索引位置
> >
> >Collect_like------------------------歌单被收藏数
> >
> >Collect_title------------------------用户歌单名称

</li>
<br>
<li>

> <strong><font color="orange">Collect_content</font></strong>------------------------这个表描述每个歌单对应的歌曲
>>
>>Collect_id------------------------用户歌单标识符
>>
>>Song_id------------------------每首歌的唯一标识符

</li>
<br>
<li>

> <strong><font color="orange">Songlist</font></strong>------------------------这个表描述位于推荐页的歌单和位于歌单功能页的歌单。之所以将推荐页歌单和用户歌单作区别，是因为推荐页歌单是必须要有的，否则网站将显得空荡荡，推荐页歌单的数目一般不会修改，只是内容会变更
> >
> >Songlist_id------------------------推荐页歌单标识符
> >
> >Songlist_title------------------------推荐页歌单名称
> >
> >Songlist_introduction------------------------推荐页歌单描述
> >
> >Songlist_photo------------------------推荐页歌单图片索引位置
> >
> >Songlist_tag------------------------推荐页歌单风格标签
> >
> >Songlist_like------------------------推荐页歌单被收藏数

</li>
<br>
<li>

> <strong><font color="orange">Songlist_content</font></strong>------------------------这个表描述每个推荐页歌单里面的歌曲
> >
> >Songlist_id------------------------推荐页歌单标识符
> >
> >Song_id------------------------每首歌的唯一标识符

</li>
<br>
<li>

> <strong><font color="orange">Admins</font></strong>------------------------这个表描述后台管理员信息，虽然后台界面不打算更改了，但由于重构数据库和后端接口的改变，后台的后端模块还是要改一下
> >
> >Admin_id------------------------管理员唯一标识符
> >
> >Admin_name------------------------管理员名称
> >
>> Admin_password------------------------管理员密码

</li>
<br>
<li>

> <strong><font color="orange">Song_upload</font></strong>------------------------这个表记录用户上传的歌曲
> >
> >Song_id------------------------每首歌的唯一标识符
> >
> >User_id------------------------每个用户的唯一标识符
> >
> >Permission------------------------定义用户是否允许该歌曲公开
> >
> >Checked------------------------歌曲若公开，管理员是否同意（防止用户随意将内容公布到网站上）

</li>
<br>
<li>

> <strong><font color="orange">Play</font></strong>------------------------这个表记录所有歌曲播放事件
> >
> >Play_time------------------------播放开始请求歌曲文件的时间
> >
> >User_id------------------------每个用户的唯一标识符
> >
> >Song_id------------------------每首歌的唯一标识符

</li>
</ol>
<br>
<br>
<br>
<br>

---
<br>

<h2><font color="red">3、数据库DDL</font></h2>
<br>
<ul>
<li>

> <strong><font color="orange">Song</font></strong>表格
~~~sql
create table Song 
(Song_id   int unsigned AUTO_INCREMENT NOT NULL,
Song_name	varchar(50) NOT NULL,
Lrc		varchar(255),
Album		varchar(50),
Release_time	date,
Song_tag	enum('流行','说唱','国风','摇滚','电子','民谣','R&B','轻音乐','古典','爵士') NOT NULL,
primary key (Song_id));
~~~
</li>
<br>
<li>

> <strong><font color="orange">Song_version</font></strong>表格
~~~sql
create table Song_version
(Song_id   int unsigned,
Quality		enum('veryhigh','high','middle','low') NOT NULL,
Song_url	varchar(225) NOT NULL,
Primary key (Song_id, Quality),
foreign key (Song_id) references Song(Song_id) On delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">Singer</font></strong>表格
~~~sql
create table Singer
(Singer_id	int unsigned AUTO_INCREMENT NOT NULL,
Singer_name  varchar(20) NOT NULL,
Singer_sex	enum('男','女','不公开') NOT NULL,
Country		varchar(10),
Singer_introduction varchar(255),
Singer_photo varchar(225),
Primary key (Singer_id));
~~~
</li>
<br>
<li>

> <strong><font color="orange">Users</font></strong>表格
~~~sql
create table Users
(User_id  int unsigned AUTO_INCREMENT NOT NULL,
User_name	varchar(15) NOT NULL,
User_password  varchar(20) NOT NULL,
User_sex		enum('男','女','不公开') NOT NULL,
Phone_number    tinyint,
Email			varchar(30),
Birthday		date,
User_introduction	varchar(255),
Location		varchar(45),
User_photo		varchar(255),
Create_time		datetime NOT NULL,
Primary key(User_id),
unique (User_name));
~~~
</li>
<br>
<li>

> <strong><font color="orange">Songlist</font></strong>表格
~~~sql
create table Songlist
(Songlist_id	int unsigned AUTO_INCREMENT NOT NULL,
Songlist_title	varchar(20) NOT NULL,
Songlist_introduction varchar(255),
Songlist_photo		varchar(255),
Songlist_tag	enum('流行','说唱','国风','摇滚','电子','民谣','R&B','轻音乐','古典','爵士') NOT NULL,
Songlist_like	int unsigned NOT NULL DEFAULT '0',
primary key(Songlist_id),
unique (Songlist_title));
~~~
</li>
<br>
<li>

> <strong><font color="orange">Collect</font></strong>表格
~~~sql
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
~~~
</li>
<br>
<li>

> <strong><font color="orange">Collect_content</font></strong>表格
~~~sql
create table Collect_content
(Collect_id		int unsigned,
Song_id			int unsigned,
primary key (Collect_id, Song_id),
foreign key (Collect_id) references Collect (Collect_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">Songlist_content</font></strong>表格
~~~sql
create table Songlist_content
(Songlist_id		int unsigned,
Song_id				int unsigned,
primary key (Songlist_id, Song_id),
foreign key (Songlist_id) references Songlist (Songlist_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">Comments</font></strong>表格
~~~sql
(Comment_id      int unsigned AUTO_INCREMENT NOT NULL,
Song_id			int unsigned,
Comment_time		datetime NOT NULL,
User_id				int unsigned,
Content				varchar(255) NOT NULL,
Comment_like		int unsigned NOT NULL DEFAULT '0',
primary key (Comment_id),
foreign key (User_id) references Users (User_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">Comments_like_table</font></strong>表格
~~~sql
create table Comments_like_table
(Comment_id   int unsigned,
User_id int unsigned,
Comemnt_like_time   datetime,
primary key (Comment_id, User_id),
foreign key (Comment_id) references Comments(Comment_id) on delete cascade,
foreign key (User_id) references Users(User_id) on delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">Song_upload</font></strong>表格
~~~sql
create table Song_upload
(Song_id		int unsigned,
User_id			int unsigned,
Permission		enum('YES', 'NO'),
Checked			enum('YES', 'NO'),
primary key (Song_id),
foreign key (User_id) references Users (User_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">MapSAA</font></strong>表格
~~~sql
create table MapSAA
(Singer_id		int unsigned,
Album			varchar(50),
Album_picture	varchar(255),
primary key (Singer_id, Album),
foreign key (Singer_id) references Singer (Singer_id) on delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">MapSS</font></strong>表格
~~~sql
create table MapSS
(Song_id		int unsigned ,
Singer_id		int unsigned ,
primary key (Singer_id, Song_id),
foreign key (Singer_id) references Singer (Singer_id) on delete cascade,
foreign key (Song_id) references Song (Song_id) on delete cascade);
~~~
</li>
<br>
<li>

> <strong><font color="orange">Admins</font></strong>表格
~~~sql
create table Admins
(Admin_id		int unsigned AUTO_INCREMENT NOT NULL,
Admin_name		varchar(15) NOT NULL,
Admin_password	varchar(20) NOT NULL,
primary key (Admin_id),
unique (Admin_name));
~~~
</li>
<br>
<li>

> <strong><font color="orange">Play</font></strong>表格
~~~sql
create table Play
(Play_time	 datetime,
User_id 	int unsigned,
Song_id		int unsigned,
primary key (Play_time, User_id),
foreign key (Song_id) references Song (Song_id) on delete set null,
foreign key (User_id) references Users (User_id) on delete cascade);
~~~
</li>
</ul>

<br>
<br>
<br>
<br>

---
<br>

<h2><font color="red">4、后端接口文档</font></h2>
<br>

- [x] <font color="yellow">全局说明：</font></h2>
- [ ] 在所有的API中，一旦提供参数有出现时间参数，都意味着上传对应格式的当前时间。
- [ ] 在所有的API中，如果发现返回参数有几组由（）包含的内容。意味着返回参数的内容由多个表格组成，每个表格的所有属性就是一个（）内的所有属性。
- [ ] 在所有的API中，一旦提供参数有出现like字样，都为初始化点赞数，因此须将带like字样的提供参数赋值为0。
- [ ] 在所有的API中，参数的命名都是根据数据库字段进行命名的，没有冲突的命名。

<br>
<br>
<ol>
<li>

> <strong><font color="orange">API_a1</font></strong>
~~~
功能：用户注册
类型：POST
URL：users/signin
提供参数：username, userpassword, usersex, phonenummber, email, birthday, userintroduction, location, userphoto
返回参数：backmsg{userid}
返回信息:  【code = 0, type = success, msg = "注册成功"】	
	      【code = 1, type = error, msg = "注册失败"】
	      【code = 2, type = error, msg = "用户名已存在"】
~~~
>   |参数：|username|userpassword|usersex|phonenummber|email|birthday|userintroduction|location|userphoto|
>   |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|否|否|否|否|否|否|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_a2</font></strong>
~~~
功能：用户登陆
类型：POST
URL：users/login
提供参数：username, userpassword
返回参数：backmsg{(userid, username, userpassword, usersex, phonenumber, email, birthday, userintroduction, location, userphoto, createtime), (collectid, collecttitle, collectphoto), (songid, songname, singerid, singername, permission, check)}
返回信息：【code = 0, type = success, msg = "登陆成功"】	
	【code = 1, type = error, msg = "用户名或密码错误"】
~~~
>   |参数：|username|userpassword|
>   |-----|-----|-----|
>   |必需：|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_a3</font></strong>
~~~
功能：更新用户信息
类型：POST
URL：users/update/infomation
提供参数：userid, username, userpassword, usersex, phonenumber, email, birthday, userintroduction, location, userphoto
返回参数：无
返回信息：【code = 0, type = success, msg = "修改成功"】	
	【code = 1, type = error, msg = "用户名或密码错误"】
~~~
>   |参数：|userid|username|userpassword|usersex|phonenummber|email|birthday|userintroduction|location|userphoto|
>   |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|否|否|否|否|否|否|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_a4</font></strong>
~~~
功能：注销用户
类型：POST
URL：users/signout
提供参数：userid, username, userpassword
返回参数：无
返回信息：【code = 0, type = success, msg = "注销成功"】	
	【code = 1, type = error, msg = "用户名或密码错误"】
~~~
>   |参数：|userid|username|userpassword|
>   |-----|-----|-----|-----|
>   |必需：|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b1</font></strong>
~~~
功能：查询某个收藏夹内的内容
类型：GET
URL：search/content/bycollectid
提供参数：collectid, userid
返回参数：(userid, collectid, collecttime, collectintroduction, collectphoto, collectlike, collecttitle), (songid, songname, singerid, singername)
返回信息：无
~~~
>   |参数：|collectid|userid|
>   |-----|-----|-----|
>   |必需：|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b2</font></strong>
~~~
功能：通过用户ID获得用户具体信息
类型：GET
URL：search/user/byid
提供参数：userid
返回参数：(userid, username, usersex, phonenumber, email, birthday, userintroduction, location, userphoto, createtime), (userid, collectid, collecttitle, collectphoto) (songid, songname, singerid, singername, permission, check)
返回信息：无
~~~
>   |参数：|userid|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b3</font></strong>
~~~
功能：查询某个名字的用户
类型：GET
URL：search/user/byname
提供参数：username
返回参数：username, userphoto，userid
返回信息：无
~~~
>   |参数：|username|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b4</font></strong>
~~~
功能：通过歌曲名字查询一首歌
类型：GET
URL：search/song/byname
提供参数：songname
返回参数：songname, songid, singername, singerid
返回信息：无
~~~
>   |参数：|songname|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b5</font></strong>
~~~
功能：通过歌手名字查询歌手
类型：GET
URL：search/singer/byname
提供参数：singername
返回参数：singerid, singername, singersex, country
返回信息：无
~~~
>   |参数：|songname|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b6</font></strong>
~~~
功能：通过歌手ID查询歌手
类型：GET
URL：search/singer/bysingerid
提供参数：singerid
返回参数：(singerid, singername, singerphoto, singersex, country, singerintroduction), (songid, songname)
返回信息：无
~~~
>   |参数：|singerid|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b7</font></strong>
~~~
功能：通过歌曲流派查询歌手信息
类型：GET
URL：search/singer/byalbum
提供参数：album
返回参数：singername, singerid, singerphoto
返回信息：无
~~~
>   |参数：|album|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_b8</font></strong>
~~~
功能：查询某个推荐页歌单内的内容
类型：GET
URL：search/content/bysonglistid
提供参数：songlistid
返回参数：(songlistid, songlisttitle, songlistintroduction, songlistphoto, songlisttag, songlistlike), (songid, songname, singerid, singername)
返回信息：无
~~~
>   |参数：|songlistid|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_c1</font></strong>
~~~
功能：上传歌曲
类型：POST
URL： song/upload
提供参数：songname, lrc, album, releasetime, songtag, userid, userpassword, permission, checked, albumpicture, singername, quality
返回参数：backmsg{songid, singerid, userid}
返回信息：【code = 0, type = error, msg = "上传失败，数据库中已有该品质的该歌曲"】	
	【code = 1, type = success, msg = "上传成功，数据库更新数据：品质"】
	【code = 1, type = success, msg = "上传成功，数据库更新数据：品质，歌曲"】
	【code = 1, type = success, msg = "上传成功，数据库更新数据：品质，歌曲，专辑"】
	【code = 1, type = success, msg = "上传成功，数据库更新数据：品质，歌曲，专辑，歌手"】
~~~
>   |参数：|songname|lrc|album|releasetime|songtag|userid|userpassword|permission|checked|albumpicture|singername|quality|
>   |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
>   |必需：|是|否|否|否|否|是|是|是|是|否|否|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_c2</font></strong>
~~~
功能：获取一首具体的歌
类型：GET
URL：song/get
提供参数：songid, playtime
返回参数：songid, songname, lrc, album, releasetime, songtag, quality, songurl, singername, albumpicture， playtime
返回信息：无
~~~
>   |参数：|songid|playtime|
>   |-----|-----|-----|
>   |必需：|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_c3</font></strong>
~~~
功能：获取一首歌的评论
类型：GET
URL：song/comment/get
提供参数：songid
返回参数：songid, commenttime, userid, username, content, commentlike
返回信息：无
~~~
>   |参数：|songid|
>   |-----|-----|
>   |必需：|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_c4</font></strong>
~~~
功能：给一首歌评论
类型：POST
URL：song/comment/post
提供参数：songid, userid, content, commenttime,commentlike
返回参数：backmsg{commentid, songid, commenttime, userid, username, content, commentlike}
返回信息：【code = 0, type = success, msg = "评论成功"】	
	【code = 1, type = error, msg = "评论失败"】
~~~
>   |参数：|songid|userid|content|commenttime|commentlike|
>   |-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_d1</font></strong>
~~~
功能：给一个评论点赞
类型：POST
URL：like/comment/give
提供参数：commentid, userid, commentliketime
返回参数：无
返回信息：【code = 0, type = success, msg = "点赞成功"】	
	【code = 1, type = error, msg = "你已经点过赞了"】
~~~
>   |参数：|commentid|userid|commentliketime|
>   |-----|-----|-----|-----|
>   |必需：|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_d2</font></strong>
~~~
功能：给一个评论取消点赞
类型：POST
URL：like/comment/ungive
提供参数：commentid, userid, commentliketime
返回参数：无
返回信息：【code = 0, type = success, msg = "取消点赞成功"】	
	【code = 1, type = error, msg = "你并没有点过赞"】
~~~
>   |参数：|commentid|userid|commentliketime|
>   |-----|-----|-----|-----|
>   |必需：|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_e1</font></strong>
~~~
功能：提供推荐页歌单列表
类型：GET
URL：list/songlist
提供参数：无
返回参数：songlistid, songlisttitle, songlistphoto
返回信息：无
~~~
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_e2</font></strong>
~~~
功能：提供排行版模块1
类型：GET
URL：list/mode1
提供参数：无
返回参数：songid songname singername 
返回信息：无
~~~
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_e3</font></strong>
~~~
功能：提供排行版模块2
类型：GET
URL：list/mode2
提供参数：无
返回参数：collectid, collecttitle, collectphoto, userid, username
返回信息：无
~~~
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_e4</font></strong>
~~~
功能：提供排行版模块3
类型：GET
URL：list/mode3
提供参数：无
返回参数： userid, username, userphoto
返回信息：无
~~~
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_f1</font></strong>
~~~
功能：创建一个收藏夹
类型：POST
URL：collect/build
提供参数：userid, username, userpassword, collecttime, collectintroduction, collectphoto, collectlike, collecttitlt
返回参数： backmsg{collectid, userid, collectlike}
返回信息：【code = 0, type = success, msg = "创建成功"】
	【code = 1, type = error, msg = "创建失败"】
~~~
>   |参数：|userid|username|userpassword|collecttime|collectintroduction|collectphoto|collectlike|collecttitlt|
>   |-----|-----|-----|-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|否|否|是|否|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_f2</font></strong>
~~~
功能：将一首歌放进一个指定的收藏夹
类型：POST
URL：collect/put
提供参数：userid, username, userpassword, songid, collectid
返回参数： 无
返回信息：【code = 0, type = success, msg = "收藏成功"】
	【code = 1, type = error, msg = "这个歌单里已经有这首歌了"】
~~~
>   |参数：|userid|username|userpassword|songid|collectid|
>   |-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_f3</font></strong>
~~~
功能：从收藏夹中移除一首歌
类型：POST
URL：collect/unput
提供参数：userid, username, userpassword, collectid, songid
返回参数： 无
返回信息：【code = 0, type = success, msg = "移除成功"】
	【code = 1, type = error, msg = "移除失败"】
~~~
>   |参数：|userid|username|userpassword|songid|collectid|
>   |-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_f4</font></strong>
~~~
功能：收藏他人的收藏夹
类型：POST
URL：collect/store
提供参数：userid, username, userpassword, collectid, collecttime
返回参数： 无
返回信息：【code = 0, type = success, msg = "收藏成功"】
	【code = 1, type = error, msg = "你已经收藏过这个歌单了"】
~~~
>   |参数：|userid|username|userpassword|collectid|collecttime|
>   |-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_f5</font></strong>
~~~
功能：移除自己的某个收藏夹
类型：POST
URL：collect/unstore
提供参数：userid, username, userpassword, collectid
返回参数： 无
返回信息：【code = 0, type = success, msg = "移除成功"】
	【code = 1, type = error, msg = "移除失败"】
~~~
>   |参数：|userid|username|userpassword|collectid|
>   |-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|
</li>
<br>
<br>
<br>
<br>
<br>

<li>

> <strong><font color="orange">API_f6</font></strong>
~~~
功能：更新收藏夹信息
类型：POST
URL：collect/update
提供参数：userid, username, userpassword, collectid, collectintroduction, collectphoto, collecttitle
返回参数： 无
返回信息：【code = 0, type = success, msg = "更新成功"】
	【code = 1, type = error, msg = "更新失败"】
~~~
>   |参数：|userid|username|userpassword|collectid|collectintroduction|collectphoto|collecttitle|
>   |-----|-----|-----|-----|-----|-----|-----|-----|
>   |必需：|是|是|是|是|否|否|否|
</li>
</ol>

<br>
<br>
<br>
<br>

---
<br>

<h2><font color="red">5、功能需求对应的API</font></h2>
<br>