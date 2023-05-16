# Використовуємо офіційний Python 3.10 базовий образ
FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install poetry
RUN poetry install --no-dev

ENTRYPOINT ["python", "python_bot/main.py"]
