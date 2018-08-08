FROM nginx:alpine

RUN wget -O jbrowse.zip https://github.com/GMOD/jbrowse/releases/download/1.15.1-release/JBrowse-1.15.1.zip && \
    unzip jbrowse.zip && \
    rm jbrowse.zip && \
    rm -rf /usr/share/nginx/html && \
    mv JBrowse-* /usr/share/nginx/html && \
    ln -s /data /usr/share/nginx/html/data

VOLUME /data
