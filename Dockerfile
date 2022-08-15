FROM python:3.8-slim

LABEL maintainer="dipesh@fusemachines.com"

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY ./app .

CMD [ "python", "./eventscanner.py", "https://mainnet.infura.io/v3/f2064886ae174974a45d1784720ad9ac"]