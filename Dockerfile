FROM francois2/hugo-node AS build

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . ./
RUN hugo

FROM nginx:alpine

COPY gzip.conf /etc/nginx/conf.d
COPY --from=build /app/public /usr/share/nginx/html/
