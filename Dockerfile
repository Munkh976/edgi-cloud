FROM python:3.11-slim

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

ENV PORT=8001
EXPOSE 8001

CMD ["datasette", "serve", "CAMPD.db", "--host", "0.0.0.0", "--port", "8001", "--metadata", "metadata.json", "--template-dir", "templates", "--static", "static:static", "--plugins-dir", "plugins"]
