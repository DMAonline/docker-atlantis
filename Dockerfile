FROM runatlantis/atlantis:v0.4.1

RUN apk add --no-cache jq groff less python py-pip && \
  pip install awscli && \
  apk --purge -v del py-pip