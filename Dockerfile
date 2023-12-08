FROM alpine:3.19.0
LABEL org.opencontainers.image.title="sshpass-ci-container"
LABEL org.opencontainers.image.description="Docker image to run sshpass in CI environments"
LABEL org.opencontainers.image.ref.name="main"
LABEL org.opencontainers.image.licenses='MIT'
LABEL org.opencontainers.image.vendor="Timo Reymann <mail@timo-reymann.de>"
LABEL org.opencontainers.image.authors="Timo Reymann <mail@timo-reymann.de>"
LABEL org.opencontainers.image.url="https://github.com/timo-reymann/sshpass-ci-container"
LABEL org.opencontainers.image.documentation="https://github.com/timo-reymann/sshpass-ci-container"
LABEL org.opencontainers.image.source="https://github.com/timo-reymann/sshpass-ci-container.git"
RUN apk add --update --no-cache \
        git \
        openssh \
        sshpass
