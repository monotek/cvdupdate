FROM python:3.11.3-alpine3.17

WORKDIR /cvdupdate

COPY . .

RUN python setup.py build && \
    python setup.py install && \
    addgroup -g 1000 cvdupdate && \
    adduser -D -H -G cvdupdate -u 1000 -h /cvdupdate cvdupdate && \
    chown -R cvdupdate:cvdupdate /cvdupdate

USER cvdupdate:cvdupdate

RUN cvd update

ENTRYPOINT ["cvd", "serve"]
