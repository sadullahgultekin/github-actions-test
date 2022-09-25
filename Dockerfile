FROM python:3.9
WORKDIR .
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD uvicorn main:app --port 5000 --host 0.0.0.0
