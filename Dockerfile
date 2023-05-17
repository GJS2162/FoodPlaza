# FROM python:3

# WORKDIR /data

# RUN pip install django==3.2

# COPY . .

# RUN python manage.py migrate

# EXPOSE 8001

# CMD ["python","manage.py","runserver","0.0.0.0:8001"]

FROM python:3
WORKDIR /app
# Copy the requirements file to the container
COPY requirements.txt .

# Install project dependencies
RUN pip install -r requirements.txt

# Copy the project files to the container
COPY . .

# Set environment variables (if required)
# ENV DJANGO_SETTINGS_MODULE=myproject.settings

# Run database migrations (if required)
# RUN python manage.py migrate

# Expose the port on which Django runs (default is 8000)
EXPOSE 8001

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
