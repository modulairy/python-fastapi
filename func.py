from fastapi import FastAPI, HTTPException, Response
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles
import mistune

app = FastAPI()

@app.get("/")
async def sample_func():
    html_content = ""
    with open("./README.md", "r", encoding="utf-8") as file:
        markdown_content = file.read()
        html_content = mistune.markdown(markdown_content)
    return Response(content=html_content, media_type="text/html")