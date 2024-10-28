FROM python:3.12-slim

WORKDIR /app
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY . .
EXPOSE 8000
RUN pip install uvicorn fastapi
CMD ["uvicorn", "main:app", "--reload", "--host=0.0.0.0", "--port=8000"]