# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /code

# Install virtualenv
RUN pip install --no-cache-dir virtualenv
# Create a virtual environment
RUN virtualenv venv
# Activate virtual environment
ENV PATH="/code/venv/bin:$PATH"

# Copy the requirements file and install dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application's code
COPY . /code/

# Command to run the application
CMD ["python", "./VCT/manage.py", "runserver", "0.0.0.0:8000"]

