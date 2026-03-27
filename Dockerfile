# use python base image
FROM python:3.9

# set working directory
WORKDIR /app

# Copy all files into container
COPY . .

# Install dependencies
RUN pip install flask --default-timeout=100
Run some_invalid_command

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
