#!/usr/bin/python3
"""Defines the User class."""
from models.base_model import Base
from models.base_model import BaseModel
from sqlalchemy import Column
from sqlalchemy import String
from sqlalchemy.orm import relationship


class User(BaseModel, Base):
    """Blueprint for a User Table in the hbnb database

    Attributes <PUBLIC>:
        __tablename__ (str): The name of the MySQL table to store users.
        email (sqlalchemy.String): The user's email address.
        password (sqlalchemy.String): The user's password.
        first_name (sqlalchemy.String): The user's first name.
        last_name (sqlalchemy.String): The user's last name.
        places (sqlalchemy.Relationship): The User<->Place relationship.
        reviews (sqlalchemy.Relationship): The User<->Review relationship.
    """
    __tablename__ = "users"
    email = Column(String(128), nullable=False)
    password = Column(String(128), nullable=False)
    first_name = Column(String(128))
    last_name = Column(String(128))
    places = relationship("Place", backref="user", cascade="delete")
    reviews = relationship("Review", backref="user", cascade="delete")
