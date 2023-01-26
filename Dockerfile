FROM python:3.11

COPY . .

RUN python -m pip install -r requirements.txt

CMD ["bash", "-c", "waitress-serve --listen=0.0.0.0:${PORT:-8080} app:app"] 

