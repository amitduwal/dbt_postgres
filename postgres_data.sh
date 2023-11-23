docker-compose exec db psql -U postgres -c "CREATE TABLE users(id SERIAL PRIMARY KEY, name VARCHAR(200), city_code VARCHAR(3));" my_app
docker-compose exec db psql -U postgres -c "INSERT INTO public.users(name, city_code) VALUES('mickael', 'BCN');" my_app
docker-compose exec db psql -U postgres -c "INSERT INTO public.users(name, city_code) VALUES('timmy', 'MAD');" my_app
docker-compose exec db psql -U postgres -c "INSERT INTO public.users(name, city_code) VALUES('jeane', 'PAR');" my_app

docker-compose exec db psql -U postgres -c "CREATE TABLE cities(city_code VARCHAR(3), city VARCHAR(200), country VARCHAR(200));" my_app
docker-compose exec db psql -U postgres -c "INSERT INTO public.cities(city_code, city, country) VALUES('BCN', 'Barcelona', 'Spain');" my_app
docker-compose exec db psql -U postgres -c "INSERT INTO public.cities(city_code, city, country) VALUES('MAD', 'Madrid', 'Spain');" my_app
docker-compose exec db psql -U postgres -c "INSERT INTO public.cities(city_code, city, country) VALUES('PAR', 'Paris', 'France');" my_app