FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip -y
RUN git clone https://github.com/Rajbhaiya/RequestTrackerBot
WORKDIR /RequestTrackerBot
RUN pip3 install -U -r requirements.txt
CMD python3 bot.py
