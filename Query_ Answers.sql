SELECT 
    r.city,
    COUNT(r.receiver_id) AS total_receiver,
    COUNT(p.provider_id) AS total_providers
FROM
    receivers r
        JOIN
    providers p ON r.City = p.City
GROUP BY r.city;

SELECT 
    COUNT(provider_id) AS contributer, type
FROM
    providers
GROUP BY type
ORDER BY contributer DESC
LIMIT 1;

SELECT 
    provider_id, name, contact, city
FROM
    providers
WHERE
    city = 'west danielborough';

SELECT 
    r.name, COUNT(c.receiver_id) AS food_claimed
FROM
    receivers r
        JOIN
    claims c ON r.Receiver_ID = c.Receiver_ID
GROUP BY r.Name
ORDER BY food_claimed DESC
LIMIT 1;

SELECT 
    SUM(quantity) AS total_quantity_of_food
FROM
    food_listings;

SELECT 
    p.city, f.*
FROM
    food_listings f
        JOIN
    providers p ON p.Provider_ID = f.Provider_ID;
    
SELECT 
DISTINCT Food_Type AS common_food_types
FROM food_listings;
    
SELECT 
    f.food_name, COUNT(c.claim_id) AS total_claim
FROM
    food_listings f
        JOIN
    claims c ON f.Food_ID = c.Food_ID
GROUP BY f.Food_Name
ORDER BY total_claim DESC;

SELECT 
    status,
    COUNT(claim_id),
    ROUND(COUNT(claim_id) * 100 / (SELECT 
                    COUNT(*)
                FROM
                    claims),
            2) AS percentage
FROM
    claims
GROUP BY status
HAVING status = 'completed';

SELECT 
    status,
    COUNT(claim_id) AS total_claim,
    ROUND((COUNT(claim_id) * 100 / (SELECT 
                    COUNT(*)
                FROM
                    claims)),
            2) AS percentage
FROM
    claims
GROUP BY status
HAVING status = 'completed';

SELECT 
    AVG(c.food_id) AS avg_food_climed, f.food_name
FROM
    food_listings f
        JOIN
    claims c ON f.Food_ID = c.Food_ID
GROUP BY f.Food_Name
ORDER BY AVG(c.Food_ID) DESC
LIMIT 1;

SELECT 
    COUNT(c.claim_id), f.meal_type AS most_climed_meal
FROM
    food_listings f
        JOIN
    claims c ON c.Food_ID = f.Food_ID
GROUP BY meal_type
ORDER BY COUNT(c.Claim_ID) DESC
LIMIT 1;

SELECT 
    p.name, COUNT(f.food_type) AS total_food_donated
FROM
    providers p
        JOIN
    food_listings f ON p.provider_id = f.provider_id
GROUP BY p.name
ORDER BY total_food_donated DESC;