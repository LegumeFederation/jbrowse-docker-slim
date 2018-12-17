FROM nginx:alpine

ENV VERSION 1.16.0

RUN wget -O jbrowse.zip https://github.com/GMOD/jbrowse/releases/download/${VERSION}-release/JBrowse-${VERSION}.zip && \
    unzip jbrowse.zip && \
    rm jbrowse.zip && \
    rm -rf /usr/share/nginx/html && \
    mv JBrowse-* /usr/share/nginx/html && \
    ln -s /data /usr/share/nginx/html/data

VOLUME /data
