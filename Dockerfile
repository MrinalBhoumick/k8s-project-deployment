FROM python:3.9

WORKDIR /code

# Copy all files from the current directory to /code in the container
COPY ./ /code

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
