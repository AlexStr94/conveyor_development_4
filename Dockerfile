# Базовый образ
FROM python:3.12

# Копируем директорию с приложением
COPY ./app /app

# Задаем рабочую директорию
WORKDIR /app

# Копируем файл с зависимостями проекта
COPY ./requirements.txt requirements.txt

# Устанавливаем зависимости
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Запускаем приложение на 80 порту
CMD ["fastapi", "run", "main.py", "--port", "80"]