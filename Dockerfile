FROM hashicorp/terraform:1.1.2

LABEL maintainer="Shashindran Vijayan"

WORKDIR /usr/src/app

COPY . .

ENTRYPOINT ["tail", "-f", "/dev/null"]