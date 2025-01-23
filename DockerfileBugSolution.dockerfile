FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]
RUN apt-get update && apt-get install -y python3 python3-pip
COPY . /app
WORKDIR /app
CMD ["python3", "-m", "pip", "install", ".", "&&", "python3", "app.py"]