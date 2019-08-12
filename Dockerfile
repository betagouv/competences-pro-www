FROM buildpack-deps:curl AS build

ENV VERSION 0.56.3

RUN wget https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.deb \
    && dpkg -i hugo_${VERSION}_Linux-64bit.deb

WORKDIR /app
COPY . /app
RUN hugo

FROM nginx:alpine

COPY --from=build /app/public /usr/share/nginx/html/
