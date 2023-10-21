-- create database ig_clone;
use ig_clone;

-- create a users table
/*create table users(
id int auto_increment primary key,
username varchar(255) unique not null,
created_at timestamp default now());

-- building a photos table

create table photos(
id int auto_increment primary key not null,
image_url varchar(255) not null,
user_id int not null,
created_at timestamp default now(),
foreign key(user_id) references users(id));



-- Building a comments table

create table comments(
id int auto_increment primary key not null,
comment_text varchar(255) not null,
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id),
foreign key(photo_id) references photos(id)
);

-- Building a like table

create table likes(
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key(user_id) references users(id),
foreign key(photo_id) references photos(id),
primary key(user_id,photo_id) -- this line constricts each user to one like for one post
);

-- building a relationship between users

create table follows (
follower_id int not null,
followee_id int not null,
created_at timestamp default now(),
foreign key (follower_id) references users(id),
foreign key (followee_id) references users(id),
primary key (follower_id,followee_id)
);

select * from follows;


-- creating a table for hashtags
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- To create a working hashtag relationship, I'm going to create two tables that will work together. 
-- One will store all the tags that will be used in all posts, the other table will keep track the hashtags that are included in each post
-- BENEFITS                                                          DOWNSIDE
-- Unlimited number of tags                                     -This method is more cmoplicated when trying to manipulate the data: inserting/deleting
-- I can add additional information                             - Deletion of tags will bring about orphans
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table tags(
id int auto_increment primary key,
tag_name varchar(255) unique,
created_at timestamp default now()
);

create table photo_tags(
photo_id int not null,
tag_id int not null,
foreign key(photo_id) references photos(id),
foreign key(tag_id) references tags(id)
); 
*/

-- this is where i upload the data 
-- select count(*) from likes -- checking the number of entries in the likes table
-- select count(*) from comments -- checking the number of entries in the comments table
-- select count(*) from follows -- checking the number of entries in the follows table
-- select count(*) from photo_tags -- checking the number of entries in the photo_tags table
-- select count(*) from photos -- checking the number of entries in the photos table
-- select count(*) from tags -- checking the number of entries in the tags table
-- select count(*) from users -- checking the number of entries in the users table

-- challenge 1- find the 5 most loyal (oldest) users
/*select username, created_at
from users
order by created_at asc
limit 5

-- challenge 2 - what day of the week do most users register on?
select dayname(created_at) as 'day of week', count(*) 'count of registration' 
from users
group by dayname(created_at)
order by count(*) desc
-- limit 1

-- challenge 3 - find the users who have never posted a photo -- inactive users

select u.id, username
from users u
left join photos p
on u.id = p.user_id
where image_url is null


-- challenge 4 - which post by which username has the most likes
select username, p.image_url as photo, count(*) as like_count
from photos p
join likes l
on p.id = l.photo_id
join users u
on p.user_id = u.id
group by p.id
order by like_count desc
limit 1


-- challenge 5 -- how many times does the average user post
select
round((select count(*) from photos)/(select count(*) from users),2) as 'average post per user'


-- challenge - 6 what are the top 5 most commonly(popular) used hashtags?
select tag_name, count(*) as count
from photo_tags p 
join tags t
on p.tag_id = t.id
group by tag_name
order by count desc
limit 5

select username, count(*) as count_like
from likes l
join users u 
on l.user_id = u.id
group by user_id
having count_like = (select count(*) from photos)
*/

