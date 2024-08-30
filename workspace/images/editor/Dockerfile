# docker file to build javascript development environment based on ubuntu
# Usage: docker build -t <image_name> .

# Base image
FROM ubuntu:22.04

# Environment variables
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION=18

RUN apt-get update

# install git
RUN apt-get install -y git
# install curl
RUN apt-get install -y curl

# install nodejs
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && \
    . "$NVM_DIR/nvm.sh" && \
    nvm install $NODE_VERSION && \
    nvm use $NODE_VERSION && \
    nvm alias default $NODE_VERSION

# install nvim
RUN curl -L -o /root/nvim-linux64.tar.gz https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz && \
  ls -l /root/ && \
  tar -xzvf /root/nvim-linux64.tar.gz -C /root/ && \
  mv /root/nvim-linux64 /root/nvim && \
  ln -s /root/nvim/bin/nvim /usr/local/bin/nvim

# install gh cli
RUN curl -L -o /root/gh_2.55.0_linux_amd64.tar.gz https://github.com/cli/cli/releases/download/v2.55.0/gh_2.55.0_linux_amd64.tar.gz && \
  tar -xzvf /root/gh_2.55.0_linux_amd64.tar.gz -C /root/ && \
  mv /root/gh_2.55.0_linux_amd64 /root/gh && \
  ln -s /root/gh/bin/gh /usr/local/bin/gh



# finished building the image 
CMD ["echo", "Finished building the image"]

# infinte loop to keep the container running
CMD ["tail", "-f", "/dev/null"]


