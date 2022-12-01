# start by pulling the python image
FROM python:3.10-slim

EXPOSE 8080

# This allows stdout to be exported to GCP logs.
ENV PYTHONUNBUFFERED=1

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

# configure the container to run in an executed manner
#ENTRYPOINT [ "python" ]

#CMD ["view.py" ]

CMD flask run --host="0.0.0.0" --port="8080"