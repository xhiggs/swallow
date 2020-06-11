# Test web application

### Build app

If you're running this app the first time, run this:

* Build:

	```
	docker-compose build
	```

* Migrate database:

    ```
    docker-compose run web python manage.py migrate
    ```

* Add to the Wagtail your superuser:

	```
	docker-compose run web python manage.py createsuperuser
	```

### Run app

If you've not run the app yet, go to the previous step. Else:

* Run:

	```
	docker-compose up
	```

* Visit [this web-page](http://127.0.0.1:8000) ```(http://127.0.0.1:8000)```
