FROM ubuntu

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y python-pip python-dev build-essential gdb &&\
    pip install --upgrade pip &&\
    pip install --upgrade virtualenv

RUN pip install gdbgui --upgrade

ENTRYPOINT gdbgui -r
