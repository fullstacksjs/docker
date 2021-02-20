FROM node:15.9-slim

COPY ./install-package.sh /install-package.sh
RUN chmod +x /install-package.sh
RUN /install-package.sh vim openssl

RUN useradd --user-group --create-home app
ENV HOME=/home/app
WORKDIR $HOME

RUN npm install lerna@3 --global
RUN npm cache clean --force

COPY ./lerna3/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
