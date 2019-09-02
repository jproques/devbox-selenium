FROM selenium/standalone-chrome-debug

RUN sudo apt-get update
RUN sudo apt-get install  -y python3 python3-pip

RUN pip3 install selenium

EXPOSE 4444
EXPOSE 5900