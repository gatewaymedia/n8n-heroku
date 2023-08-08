FROM n8nio/n8n:1.1.1

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

RUN npm install -g hpdf

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
