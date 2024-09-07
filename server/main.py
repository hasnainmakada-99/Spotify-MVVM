from fastapi import FastAPI
from pydantic import BaseModel
from sqlalchemy import create_engine

app = FastAPI()

create_engine("sqlite:///./test.db")

class UserCreate(BaseModel):
    name: str
    email: str
    passoword: str


@app.post("/signup")
def signup_user(user: UserCreate):
    # extract user data from request
    print(user.name)
    print(user.email)
    print(user.password)
    # check if the user already exist in our database
    # if not, create a new user
    pass

