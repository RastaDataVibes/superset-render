FROM apache/superset:5.0.0

USER root
RUN /app/.venv/bin/uv pip install --no-cache-dir psycopg2-binary==2.9.9
USER superset

COPY superset_config.py /app/superset_config.py
ENV SUPERSET_CONFIG_PATH=/app/superset_config.py
