import os
SECRET_KEY = os.environ.get("SUPERSET_SECRET_KEY", "fallback")
SQLALCHEMY_DATABASE_URI = os.environ.get("SQLALCHEMY_DATABASE_URI")
