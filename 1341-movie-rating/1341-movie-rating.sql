# Write your MySQL query statement below
(select u.name as results from movierating m left join users u 
on u.user_id=m.user_id
group by m.user_id
order by count(rating) desc, u.name asc
limit 1)

union all

(select m1.title as results from movierating m left join movies m1
on m.movie_id=m1.movie_id
WHERE m.created_at LIKE '2020-02%'
group by m.movie_id
order by avg(m.rating) desc, m1.title asc
limit 1);