FROM python:3.9.18-alpine3.19

WORKDIR /opt

RUN apk update 

RUN python -m pip install --upgrade pip
RUN pip install uvicorn
RUN pip install mistune
RUN pip install asyncio
RUN pip install pika
RUN pip install fastapi
RUN pip cache remove *
RUN apk cache clean
COPY . .

EXPOSE 8000

ENTRYPOINT ["/opt/app/entrypoint.sh"]
