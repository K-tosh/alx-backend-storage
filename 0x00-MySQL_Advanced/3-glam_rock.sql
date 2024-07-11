-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- SELECT band_name, (IFNULL(split, YEAR(CURRENT_DATE())) - formed) AS lifespan
-- Assuming the table name is `metal_bands` and the relevant columns are `band_name`, `formed`, `split`, and `style`.
-- The script below lists all bands with "Glam rock" as their main style, ranked by their longevity.

USE mysql;

SELECT 
    band_name, 
    IFNULL(YEAR(split), 2022) - YEAR(formed) AS lifespan
FROM 
    metal_bands
WHERE 
    style LIKE '%Glam rock%'
ORDER BY 
    lifespan DESC;
