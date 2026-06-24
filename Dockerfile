FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install -e .

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

EXPOSE 5000

CMD ["sh", "-c", "flask init-db && flask run --host=0.0.0.0"]