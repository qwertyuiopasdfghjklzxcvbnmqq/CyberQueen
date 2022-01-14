FROM fusuf/whatsasena:latest

RUN git clone https://github.com/SLTechnicalTips/CyberQueen /root/CyberQueen
WORKDIR /root/CyberQueen/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit
##CyberQueen
CMD ["node", "cyberqueen.js"]
