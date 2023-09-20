#!/usr/bin/python3
""" Instantiates a storage object.
    If environment variable is set to db, let storage be an instance of
    DBStorage()
    Otherwise let storage be an instance of FileStorage()
"""
from os import getenv


if getenv("HBNB_TYPE_STORAGE") == "db":
    from models.engine.db_storage import DBStorage
    storage = DBStorage()
else:
    from models.engine.file_storage import FileStorage
    storage = FileStorage()
storage.reload()