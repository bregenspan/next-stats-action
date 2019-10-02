FROM node:10-jessie

COPY ./get-stats /get-stats

# This assumes these repos have already been checked out earlier in
# workflow, e.g. by https://github.com/actions/checkout
COPY ./main-repo /get-stats/.work/main-repo
COPY ./diff-repo /get-stats/.work/diff-repo

# Install node_modules
RUN cd /get-stats && yarn install --production

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
