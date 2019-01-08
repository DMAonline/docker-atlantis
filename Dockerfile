FROM runatlantis/atlantis:v0.4.13

COPY git-credentials-helper.sh /usr/local/bin/git-credentials-helper.sh

RUN apk add --no-cache jq groff less python py-pip && \
  pip install awscli && \
  apk --purge -v del py-pip

RUN git config --global credential.helper "/usr/local/bin/git-credentials-helper.sh"
RUN go su atlantis git config --global credential.helper "/usr/local/bin/git-credentials-helper.sh"
