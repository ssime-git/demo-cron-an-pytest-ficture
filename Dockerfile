# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# install cron service
RUN apt-get update && apt-get -y install cron

# install nano
RUN apt-get update && apt-get -y install nano

# set nano
RUN export EDITOR=nano

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Run pytest when the container launches
CMD ["pytest"]