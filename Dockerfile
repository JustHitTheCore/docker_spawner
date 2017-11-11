FROM ubuntu:artful

RUN apt-get update
RUN apt-get install -y \
    gdb \
    make \
    gcc \
    python-dev \
    python-pip \
    python-ipython \
    vim \
    emacs \
    strace \
    ltrace

RUN pip install pwntools angr requests

# This could be done shorter but idk
RUN groupadd -g 99999 jailed
RUN useradd --uid 99999 --gid 99999 jailed
RUN mkdir /home/jailed
RUN chown jailed /home/jailed -R
RUN chmod 755 /home/jailed -R
USER jailed

ADD .bashrc /home/jailed/.bashrc

