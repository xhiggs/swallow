# Docker test app

### Setting up

 * Run:

	```
	docker-compose build
	``` 
 * Then:
	```
	docker-compose up
	```

### To see:

 * Check [this webpage](https://localhost:8000) ```(https://localhost:8000)```

### If there appears problems with database migration when app runs:

 * Run in your terminal when another runs the app:

	```
	docker-compose run db python src/dsweb/manage.py migrate
	```
