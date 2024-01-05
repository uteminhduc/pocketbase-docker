FROM alpine:latest

ARG PB_VERSION=${PB_VERSION}

RUN apk add --no-cache \
    unzip \
    # this is needed only if you want to use scp to copy later your pb_data locally
    openssh

# download and unzip PocketBase
ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/

COPY --from=pb_migrations /pb_migrations /pb/pb_migrations
COPY --from=pb_hooks /pb_hooks /pb/pb_hooks
COPY --from=pb_public /pb_public /pb/pb_public