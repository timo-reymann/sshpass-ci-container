FROM alpine:3.20.2
LABEL org.opencontainers.image.title="sshpass-ci-container"
LABEL org.opencontainers.image.description="Docker image to run sshpass in CI environments"
LABEL org.opencontainers.image.ref.name="main"
LABEL org.opencontainers.image.licenses='MIT'
LABEL org.opencontainers.image.vendor="Timo Reymann <mail@timo-reymann.de>"
LABEL org.opencontainers.image.authors="Timo Reymann <mail@timo-reymann.de>"
LABEL org.opencontainers.image.url="https://github.com/timo-reymann/sshpass-ci-container"
LABEL org.opencontainers.image.documentation="https://github.com/timo-reymann/sshpass-ci-container"
LABEL org.opencontainers.image.source="https://github.com/timo-reymann/sshpass-ci-container.git"

# renovate: datasource=repology depName=alpine_3_20/openssh versioning=loose
ARG openssh_version=9.7_p1-r4

# renovate: datasource=repology depName=alpine_3_20/sshpass versioning=loose
ARG sshpass_version=1.10-r0

RUN apk update \
    && apk add --no-cache \
        openssh=${openssh_version} \
        sshpass=${sshpass_version}

