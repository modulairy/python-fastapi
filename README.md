# python-fastapi Container README

## Overview

This container, named `python-fastapi`, is designed to execute Python 3.9 code based on FastAPI. It runs the code found in the `/opt` directory and streams it through port 8000 using the [uvicorn](https://www.uvicorn.org/) ASGI server.

## Usage

1. **Pull the Docker Image:**

   ```bash
   docker pull modulairy/python-fastapi:latest
   ```
2. **Run the Container:**

   ```bash
   docker run -p 8000:8000 modulairy/python-fastapi:latest
   ```
3. **Access the FastAPI Application:**

   Open your web browser and navigate to [http://localhost:8000](http://localhost:8000). You should be able to interact with the FastAPI application.

## Dependencies

The container relies on the following Python packages:

- [Python 3.9.18](https://www.python.org/downloads/release/python-3918/): The programming language used for the FastAPI application.
- [uvicorn](https://www.uvicorn.org/): A lightweight ASGI server for running FastAPI applications.
- [mistune](https://github.com/lepture/mistune): A fast yet powerful Markdown parser in pure Python.
- [asyncio](https://docs.python.org/3/library/asyncio.html): A library to write concurrent code using the async/await syntax.
- [pika](https://pika.readthedocs.io/): A pure-Python library for interacting with RabbitMQ, a message broker.
- [FastAPI](https://fastapi.tiangolo.com/): A modern, fast (high-performance), web framework for building APIs with Python 3.9+.

## Building the Image

If you want to build the Docker image locally, clone the [GitHub repository](https://github.com/modulairy/python-fastapi) and navigate to the repository's root directory. Then, run the following commands:

```bash
docker build -t modulairy/python-fastapi:latest .
```

## Container and Repository Links

- [Docker Hub Repository](https://hub.docker.com/r/modulairy/python-fastapi): Find the container on Docker Hub for easy access and distribution.
- [GitHub Repository](https://github.com/modulairy/python-fastapi): Access the GitHub repository for the source code and development history.

## Notes

- Ensure that Docker is installed on your system before attempting to run the container.
- For detailed information on FastAPI and other packages, refer to their respective documentation linked above.

Feel free to explore and modify the code to suit your specific needs!
