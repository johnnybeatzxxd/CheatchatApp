FROM python:3.9-slim 

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Collect static files (if applicable)
RUN python manage.py collectstatic --noinput

# Expose the port for your API
EXPOSE 8000

# Define the command to run when the container starts
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "server.wsgi"]
