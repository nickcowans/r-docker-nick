FROM alpine:3.14
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /
COPY . .
RUN apk add --no-cache R
# Only last CMD will be used - so can delete which one don't want
CMD ["/usr/bin/Rscript", "script.R"]
CMD ["sh"]
