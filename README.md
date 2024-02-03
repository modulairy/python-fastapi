# python-fastapi README

## Overview

This container, named `python-fastapi`, is designed to execute Python 3.5 code based on FastAPI. It runs the code found in the `func.py` file located under the `/opt` directory and streams it through port 8000.

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

Open your web browser and navigate to `http://localhost:8000`. You should be able to interact with the FastAPI application.

## Customization

If you want to customize the API code, you can modify the `func.py` file located in the `/opt` directory. Make sure to rebuild the Docker image after any changes.

    ``bash     docker build -t modulairy/python-fastapi:latest .     ``

## Dependencies

The container relies on Python 3.5 and FastAPI. No additional dependencies are required, as they are already included in the container.

## Notes

- Ensure that Docker is installed on your system before attempting to run the container.
- If you encounter any issues or have questions, please refer to the [FastAPI documentation](https://fastapi.tiangolo.com/) or check for updates in the Docker image repository.

Feel free to explore and modify the code to suit your specific needs!
