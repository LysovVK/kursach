# Базовый образ Python
FROM python:3.9-slim

# Рабочая директория
WORKDIR /app

# Копируем зависимости
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Копируем основной файл
COPY kursach.py .

# Открываем порт
EXPOSE 8010

# Команда запуска
CMD ["python", "kursach.py"]
