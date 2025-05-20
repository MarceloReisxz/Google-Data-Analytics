-- Cria a tabela tripData
CREATE TABLE tripData (
    ride_id TEXT PRIMARY KEY,
    rideable_type TEXT,
    started_at TEXT,
    ended_at TEXT,
    start_station_name TEXT,
    start_station_id TEXT,
    end_station_name TEXT,
    end_station_id TEXT,
    start_lat REAL,
    start_lng REAL,
    end_lat REAL,
    end_lng REAL,
    member_casual TEXT
);

-- Adiciona a coluna ride_length_minutes para armazenar a duração da viagem em minutos
ALTER TABLE tripData ADD COLUMN ride_length_minutes INTEGER;

-- Calcula e preenche a duração da viagem (em minutos)
UPDATE tripData
SET ride_length_minutes = ROUND((strftime('%s', ended_at) - strftime('%s', started_at)) / 60.0);

-- Adiciona a coluna day_of_week para identificar o dia da semana em que a viagem começou
ALTER TABLE tripData ADD COLUMN day_of_week TEXT;

-- Preenche a coluna day_of_week
UPDATE tripData
SET day_of_week = strftime('%w', started_at);

-- Remove registros com campos incompletos
DELETE FROM tripData
WHERE
    ride_id IS NULL OR ride_id = '' OR
    rideable_type IS NULL OR rideable_type = '' OR
    started_at IS NULL OR started_at = '' OR
    ended_at IS NULL OR ended_at = '' OR
    start_station_name IS NULL OR start_station_name = '' OR
    end_station_name IS NULL OR end_station_name = '' OR
    start_lat IS NULL OR
    start_lng IS NULL OR
    end_lat IS NULL OR
    end_lng IS NULL OR
    member_casual IS NULL OR member_casual = '' OR
    day_of_week IS NULL OR day_of_week = '' OR
    ride_length_minutes IS NULL;

-- Remove registros com viagens com duração menor que 1 minuto
DELETE FROM tripData
WHERE ride_length_minutes < 1;
