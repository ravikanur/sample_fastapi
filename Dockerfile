FROM python:3.8
COPY . /app
WORKDIR /app
EXPOSE 8000
RUN pip install -r requirements.txt
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
