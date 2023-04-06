
select * from shark_tank_india;


-- Q1. Calculate total number of episodes telecasted? --
select count(distinct(Ep_no)) as total_episodes from shark_tank_india;

-- Q2. Name of brands that had pitched onto the show?--
select distinct(brand) from shark_tank_india
order by brand asc ;

-- Q3. NUmber of brands that actually got funding?--
select count(Deal) as Number_of_brand_got_funding from shark_tank_india
where Deal <> 'No Deal';

select count(Amount_Invested_lakhs) as Number_of_brand_got_funding from shark_tank_india
where Amount_Invested_lakhs > 0;

/*Q4. TOtal number of Male and Female Participated in the show and what was the gender ratio?*/
select sum(Male) as total_number_of_Male_participated,sum(Female) as total_number_of_Female_participated, 
sum(Female)/sum(Male) as gender_ratio
from shark_tank_india; 

-- Q5. Total Amount Invested Into the show?--
select sum(Amount_Invested_lakhs) as total_amount_Lakhs from shark_tank_india;

-- Q6. Average equity taken by the sharks? --
select avg(Equity_Taken_in_percentage) as avg_equity from shark_tank_india
where Equity_Taken_in_percentage > 0;

-- Q7. Highest Deal which was done into the show?--
select max(Amount_invested_lakhs) as Highest_amount_invested from shark_tank_india;

-- Q8. Highest equity taken by the shark?--
select concat(max(Equity_taken_in_percentage),'%') as HIghest_equity_taken from shark_tank_india;

-- Q10. Name of the brand who cracked the deal and having atleast one female with them ?--
select Brand, Amount_invested_lakhs, Female from shark_tank_india
where Amount_invested_lakhs>0 and Female>0;

select Count(*) as Number_of_Brands_who_cracked_the_Deal from shark_tank_india
where Deal<> "No Deal" and Female>0;

select Brand, Amount_invested_lakhs,Deal,Female from shark_tank_india
where Deal<> "No Deal" and Female>0;

-- Q11. Average team member size which are in participated in Shark_tank?--
select round(avg(Team_members),0) as Average_team_size from shark_tank_india;

-- Q12. Average amount invested per deal ?--
select Round(avg(Amount_Invested_lakhs),1) as Average_amount_invested_lakhs from shark_tank_india
where Amount_Invested_lakhs>0;

select sum(Amount_Invested_lakhs)/count(Amount_Invested_lakhs) as Average_amount_invested_lakhs from shark_tank_india
where Deal <> "NO Deal";

-- Q13. Which is the Major age group from where most of the Entrepreneur comes from?--
select Avg_age,Count(*) from shark_tank_india group by Avg_age order by Count(*) desc;


-- Q14. Which city has more number of startup who came into shark tank india?--
select Location,count(Location) as number_of_startup from shark_tank_india
group by Location
order by count(Location) desc;

-- Q15.From which sector most of the deal coming from?--
select sector,count(sector) as number_of_deals from shark_tank_india
group by sector
order by count(sector) desc;

-- Q16. Number of deals done by each shark where its is single deal or in partnership?--
select partners, count(partners) as number_of_deal from shark_tank_india 
where partners <> "no-one"
group by partners
order by number_of_deal desc;







































