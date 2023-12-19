# Base image
FROM python:3.12

# Set working directory
WORKDIR /app

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6 libgl1-mesa-glx

# Copy the Python script to the container
COPY main.py /app/main.py

# Install Python dependencies
RUN pip install asyncio websockets opencv-python

# Expose the necessary ports
EXPOSE 8000

# Command to run on container start
CMD ["python", "main.py"]

