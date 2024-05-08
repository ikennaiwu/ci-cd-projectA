# use the official python image as the base
FROM python:3.9

# set the working directory in the container
WORKDIR /usr/src/app

# copy dependencies file to the working directory
COPY requirements.txt .

# install Flask and other dependecies
RUN pip install --no-cache-dir -r requirements.txt

# copy the cntent of the local  src directory to the working directory
COPY . .

# Expose  port 5000
EXPOSE 5000

# command to run the application
CMD ["python","app.py"]