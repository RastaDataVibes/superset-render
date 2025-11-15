FROM apache/superset:5.0.2

USER root
RUN pip install psycopg2-binary==2.9.9

USER superset

COPY superset_config.py /app/superset_config.py
ENV SUPERSET_CONFIG_PATH=/app/superset_config.py
