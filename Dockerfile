FROM python:3.9
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install --progress-bar off -r requirements.txt
#RUN pip install flask --progress-bar off
#COPY . /app
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]