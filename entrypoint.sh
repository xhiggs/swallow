python manage.py migrate
echo "from django.contrib.auth.models import User; \
  User.objects.create_superuser('$DJANGO_SU_NAME', '$DJANGO_SU_EMAIL', '$DJANGO_SU_PASSWORD')" \
  | ./manage.py shell
python manage.py runserver 0.0.0.0:8000
