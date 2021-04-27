FROM runmymind/docker-android-sdk:alpine-standalone
# FROM buluma/docker-android-sdk:latest

RUN apk update && apk upgrade && \
    apk add gradle npm && \
    npm config set unsafe-perm true && \
    npm install -g cordova

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
