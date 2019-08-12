FROM francois2/hugo-node

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . ./
RUN hugo

FROM nginx:alpine

COPY --from=build /app/public /usr/share/nginx/html/
