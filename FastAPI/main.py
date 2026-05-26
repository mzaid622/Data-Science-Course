from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Bye World2"}


@app.get("/about")
def about():
    data = 15
    return {"message": data}