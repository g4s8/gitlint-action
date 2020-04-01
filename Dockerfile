FROM alpine:3.11

LABEL "repository"="https://github.com/g4s8/gitlint-action"
LABEL "maintainer"="Kirill Che."

RUN apk --update --no-cache --virtual=bdeps add curl && \
  mkdir /tmp/build && cd /tmp/build && \
  curl -s -L https://raw.githubusercontent.com/llorllale/go-gitlint/master/download-gitlint.sh > download-gitlint.sh && \
  chmod +x download-gitlint.sh && \
  ./download-gitlint.sh -b /bin && \
  cd && rm -fr /tmp/build && apk del --no-cache bdeps
RUN apk --no-cache add git

WORKDIR /w
COPY ./entry.sh entry.sh

ENTRYPOINT ["/w/entry.sh"]
