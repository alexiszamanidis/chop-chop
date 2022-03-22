FROM ubuntu:focal
ARG TAGS
ENV USER=root
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    add-apt-repository -y ppa:neovim-ppa/unstable && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential neovim && \
    apt-get clean autoclean && \
    apt-get autoremove --yes
COPY . .
# CMD ["sh", "-c", "ansible-playbook --ask-vault-pass $TAGS local.yml"]
