#!/usr/bin/python3
""" State Module for HBNB project """
from models.base_model import BaseModel
from sqlalchemy import Column, String
from os import getenv

storage_t = getenv("HBNB_TYPE_STORAGE")

class Amenity(BaseModel):
    """ Amenity class """
    __tablename__ = 'amenities'
    name = Column(String(length=128), nullable=False)
