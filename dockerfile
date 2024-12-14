# Dockerfile in root
FROM python:3.8-slim
WORKDIR /app
COPY my_apps/requirements.txt .
COPY my_apps/app.py .
COPY my_apps/templates ./templates
COPY my_apps/static ./static
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "app.py"]
