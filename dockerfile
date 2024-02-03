FROM python:3.9.18-alpine3.19

ENV REQUIREMENTS=

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
COPY entrypoint.sh /.
RUN chmod +x /entrypoint.sh
COPY func.py .
COPY README.md .

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
