#!/bin/bash

cd /workdir

pip install --upgrade pip
pip install -r requirements.txt
python manage.py runserver 0.0.0.0:8000