#!/usr/bin/python3
"""Defines the State class."""
import models
from os import getenv
from models.base_model import Base, BaseModel
from models.city import City
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship


class State(BaseModel, Base):
    """Blueprint for a State Table in the hbnb database"""
    __tablename__ = "states"
    name = Column(String(128),
                  nullable=False)
    cities = relationship("City",
                          backref="state",
                          cascade="delete")

    if getenv("HBNB_TYPE_STORAGE") != "db":
        @property
        def cities(self):
            """Returns all related city objects as a list."""
            return [city for city in list(models.storage.all(City).values())
                    if city.state_id == self.id]
