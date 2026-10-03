FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY vps_panel.py /app/vps_panel.py

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV RUN_BOT=0
ENV BASE_PATH=/app/panel_data

RUN mkdir -p /app/panel_data

CMD ["python", "/app/vps_panel.py"]
