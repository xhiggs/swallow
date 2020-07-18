# Use an official Python runtime as a parent image
FROM python:3.7
LABEL maintainer="hello@wagtail.io"

# Set environment varibles
ENV PYTHONUNBUFFERED 1
ENV DJANGO_ENV dev
ENV DJANGO_SU_NAME=admin
ENV DJANGO_SU_EMAIL=smailden4@gmail.com
ENV DJANGO_SU_PASSWORD=pass

COPY config/requirements.txt /code/config/requirements.txt
RUN pip install --upgrade pip
# Install any needed packages specified in requirements.txt
RUN pip install -r /code/config/requirements.txt

# Copy the current directory contents into the container at /code/
COPY . /code/
# Set the working directory to /code/
WORKDIR /code/

RUN useradd wagtail
RUN chown -R wagtail /code
USER wagtail
