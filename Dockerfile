FROM node:14.17.6
RUN npm install --global --silent yo
RUN adduser --disabled-password -u 501 yeoman && \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER yeoman
ENTRYPOINT ["yo", "--no-insight"]