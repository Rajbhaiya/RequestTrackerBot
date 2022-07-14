FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip -y
WORKDIR /RequestTrackerBot
RUN pip3 install -U -r requirements.txt
CMD python3 bot.py
