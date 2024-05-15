FROM python: 3.9

WORKDIR /APP

COPY requirements.txt ./
RUN apt-get update 
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
