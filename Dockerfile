FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 4000
CMD ["python", "app.py"]


FROM python:3.12-slim
WORKDIR /app
# Installe tout en root, conserve cache apt/pip
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 4000
CMD ["python", "main.py"]