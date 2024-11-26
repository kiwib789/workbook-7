select * 
from vehicles
where car_type =(
select car_type
from vehicles
where dealerships = 'Truck'
);

/* dealership with a certain car type*/