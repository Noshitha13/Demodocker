
# Use an official Python runtime as a parent image
FROM python:3.13

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies directly
RUN pip install django==5.1.4

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variables for the Django settings
ENV DJANGO_SETTINGS_MODULE=myapp.settings

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]