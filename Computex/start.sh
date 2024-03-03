
python3 mamage.py migrate

gunicorn --bind 0.0.0.0:8000 Computex.wsgi:application