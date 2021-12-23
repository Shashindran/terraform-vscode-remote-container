FROM hashicorp/terraform:1.1.2

LABEL maintainer="Shashindran Vijayan"

WORKDIR /usr/src/app

RUN apk update

COPY . .

ENTRYPOINT ["tail", "-f", "/dev/null"]