SELECT * 
FROM vehicles 
WHERE VIN IN (
    SELECT VIN 
    FROM inventory 
    WHERE dealership_id = 1  
);

/* vehicle from specific dealership*/
