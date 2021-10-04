FROM axa-hk-a-lake-runtime-docker.docker.artifactory.pink.ap-southeast-1.aws.openpaas.axa-cloud.com/hk-nodejs:14.17.5-rhel8.4-dt-nightly
LABEL maintainer="EAB Systems"
EXPOSE 5000:5000
WORKDIR /app
COPY . .
RUN npm i
CMD ["npm", "run", "serve"]
