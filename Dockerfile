ARG VERSION=latest
FROM alpine:$VERSION

LABEL maintainer="andrea.ciaccia@codeploy.it"

ARG VERSION
RUN echo $VERSION

# modalità exec
WORKDIR /optimize
RUN ["echo", "$VERSION" ]
RUN apk add --upgrade pngquant
RUN apk add --upgrade imagemagick
RUN apk add --no-cache --upgrade bash
COPY resize.sh /resize.sh
RUN chmod +x /resize.sh

CMD /resize.sh;
