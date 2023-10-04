FROM alpine:3.18.4
RUN apk add --update --no-cache \
        git \
        openssh \
        sshpass \
        bash
ENTRYPOINT [ "/bin/bash" ]