# Base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]