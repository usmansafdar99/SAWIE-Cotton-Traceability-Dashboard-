FROM python:3.11-slim

# Set working directory to the backend folder inside the container
WORKDIR /app/backend

# Copy requirements from root
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy all backend files into the working directory
COPY backend/ .

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
