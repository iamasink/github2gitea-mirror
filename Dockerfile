FROM alpine

# Install necessary stuff
RUN apk add --no-cache bash coreutils curl jq

WORKDIR /app
COPY github2gitea-mirror.sh .
RUN chmod +x github2gitea-mirror.sh

# CMD ["sh", "-c", "env && bash ./github2gitea-mirror.sh"]