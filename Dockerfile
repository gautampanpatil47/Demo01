FROM node:latest
RUN echo "Tryin to build my first application 01"
COPY . /var/www
WORKDIR /var/www
RUN npm install
EXPOSE 3000
ENTRYPOINT ["node",".\app.js"]