FROM quay.io/lyfe00011/md:beta
RUN git clone https://github.com/lyfe00011/levanter.git /root/LyFE/
WORKDIR /root/LyFE/
RUN yarn install
# Install pm2 globally so pm2-runtime is available
RUN yarn global add pm2 # Or npm install -g pm2 if you prefer npm for global installs
CMD ["pm2-runtime", "npm", "start"]
