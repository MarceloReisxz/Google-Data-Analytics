-- Conta o número total de viagens realizadas por cada tipo de usuário
SELECT
    member_casual,
    COUNT(*) AS total
FROM tripData
GROUP BY member_casual;

-- Conta o número de viagens por tipo de usuário e por tipo de bicicleta utilizada
SELECT
    member_casual,
    rideable_type,
    COUNT(*) AS total
FROM tripData
GROUP BY member_casual, rideable_type;

-- Calcula a duração média das viagens para cada tipo de usuário
SELECT
    member_casual,
    AVG(ride_length_minutes) AS time_average
FROM tripData
GROUP BY member_casual;

-- Conta o número de viagens por tipo de usuário e por dia da semana
SELECT
    member_casual,
    day_of_week,
    COUNT(*) AS total
FROM tripData
GROUP BY member_casual, day_of_week;
