FROM node:22

RUN mkdir /dist
RUN echo "<html><body>Hello world</body></html>" > /dist/index.html
RUN npm i -g wrangler

ENTRYPOINT [ "wrangler", "pages", "dev", "/dist", "--port", "3000" ]
