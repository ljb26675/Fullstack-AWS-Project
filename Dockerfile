# SOURCE IMAGE
FROM python:stretch

# SET UP APP DIRECTORY?
COPY . /app
WORKDIR /app

# INSTALL PIP AND OTHER DEPENDENCIES
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Define an entrypoint which will run the main app using the Gunicorn WSGI server.
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]