FROM python:3.9.18

WORKDIR /opt

RUN apt update && apt upgrade -y

RUN python -m pip install --upgrade pip
RUN pip install uvicorn
RUN pip install mistune
RUN pip install asyncio
RUN pip install pika
RUN pip install fastapi

COPY . .

EXPOSE 8000

ENTRYPOINT ["/opt/app/entrypoint.sh"]
