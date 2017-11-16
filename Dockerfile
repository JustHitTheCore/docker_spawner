FROM ubuntu:artful

RUN apt-get update
RUN apt-get install -y \
    sudo \
    git \
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

RUN git clone https://github.com/pwndbg/pwndbg && cd pwndbg && ./setup.sh

RUN apt-get -y install xterm locate


# This could be done shorter but idc
RUN groupadd -g 99999 jailed
RUN useradd --uid 99999 --gid 99999 jailed
RUN mkdir /home/jailed
RUN chown jailed /home/jailed -R
RUN chmod 755 /home/jailed -R
USER jailed

RUN echo "source /pwndbg/gdbinit.py" >> /home/jailed/.gdbinit

ADD .bashrc /home/jailed/.bashrc

