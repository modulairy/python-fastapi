FROM python:3.5-alpine

WORKDIR /opt

RUN pip install fastapi
RUN pip install mistune

COPY . .

EXPOSE 8000

ENTRYPOINT ["/opt/app/entrypoint.sh"]
