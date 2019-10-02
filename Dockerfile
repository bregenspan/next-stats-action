FROM node:10-jessie

COPY ./get-stats /get-stats

# Install node_modules
RUN cd /get-stats && yarn install --production

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
