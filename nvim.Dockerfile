FROM ubuntu:22.04
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common && apt-add-repository -y ppa:ansible/ansible && apt-add-repository -y ppa:neovim-ppa/unstable && apt update && apt install -y curl git ansible unzip wget tree build-essential neovim
COPY . .

# CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
