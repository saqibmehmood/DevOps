#!/bin/sh

set -e
#python3 manage.py runserver
python manage.py collectstatic --noinput
#python manage.py wait_for_db
python manage.py migrate
#python3 manage.py runserver 0.0.0.0:8000
uwsgi --socket :9000 --workers 2 --master --enable-threads --module app.wsgi












