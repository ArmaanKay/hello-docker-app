# Use official Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy your application files into the image
COPY . .

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Define the default command to run the app
CMD ["python", "app.py"]