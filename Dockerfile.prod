FROM docker-registry2.k8s:5000/node:14.15.3-alpine as build
WORKDIR /app
COPY . .
RUN npm i
RUN npm run build

FROM nginx:stable-alpine
LABEL maintainer="EAB Systems"
EXPOSE 3000
# RUN apk add --update nodejs npm
# RUN npm i -g fs
WORKDIR /usr/share/nginx/html/
COPY --from=build /app/dist .
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
# COPY .env.js .
# CMD ["sh", "-c", "cp -rf /app/configs . && node .env.js prod build && nginx -g \"daemon off;\""]
CMD ["sh", "-c", "nginx -g \"daemon off;\""]
