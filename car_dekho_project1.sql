use car_dekho;
select * from cars;
select count(Name) as total_recoder from cars;

-- how many cars are availabel in 2023?
select year,count(Name) as total_cars from cars where year like 2023;

-- how many cars are availabel in 2020,2021,2022
select year,count(Name) as total_cars from cars where year in (2020,2021,2022) group by year;

-- give total cars by year 
select year,count(Name) as total_cars from cars group by year;

-- how many diesel cars in 2020
select year,count(Name) from cars where (year = 2020 and fuel = 'Diesel');

-- how many petrol cars in 2020
select year,count(Name) from cars where (year = 2020 and fuel = 'Diesel');

-- how many cars have petrol,diesel,CNG
select year,fuel,count(Name) as numbers from cars where fuel in ('petrol','Diesel','CNG') group by fuel;

-- which year have more than 100 cars
select year,count(Name) from cars group by year having count(Name) > 100;


-- count cars from 2015 to 2023
select year,count(Name) as total_cars from cars where year between 2015 and 2023 group by year order by year asc;

-- give all cars details from 2015 to 2023
select * from cars where year between 2015 and 2023 order by year asc;

-- top 5 costliest car 
select Name,selling_price as price from cars order by selling_price desc limit 5;

-- top 5 cars by mileage
select Name,mileage from cars order by mileage desc limit 5;
