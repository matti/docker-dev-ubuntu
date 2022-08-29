FROM ubuntu:22.04
ENV PROMPT_COMMAND="history -a"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  curl nano

WORKDIR /app
COPY app .
ENTRYPOINT [ "/app/entrypoint.sh" ]
