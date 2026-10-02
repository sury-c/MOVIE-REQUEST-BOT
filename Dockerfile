FROM python:3.10.8-slim-bookworm

WORKDIR /jisshu-filter-bot
RUN chmod 777 /jisshu-filter-bot

RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x start.sh

CMD ["bash", "start.sh"]
