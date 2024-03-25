#!/bin/bash

PROJECT_NAME=$1
PROJECT_DIR="/workdir/$PROJECT_NAME"

# 프로젝트 디렉토리가 이미 존재하는지 확인합니다.
if [ -d "$PROJECT_DIR" ]; then
    echo "WARNING: Install Django - The project directory already exists. Exiting the script."
    exit 1
fi

# 프로젝트 디렉토리가 없는 경우에만 스크립트를 계속 진행합니다.
cd /workdir

pip install django
django-admin startproject $PROJECT_NAME .
python manage.py migrate
pip freeze > requirements.txt