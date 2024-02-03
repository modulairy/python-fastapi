#!/bin/sh

if [ -n "$REQUIREMENTS" ]; then
    pip install $REQUIREMENTS
else
    echo "REQUIREMENTS environment variable is empty. No packages to install."
fi

uvicorn func:app --host 0.0.0.0 --port 8000 --reload
