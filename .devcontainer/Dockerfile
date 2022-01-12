FROM tomoyanonymous/latex-remote-container-acmart:latest

RUN apt-get update 
RUN apt-get install -y nodejs npm

RUN wget -c --no-check-certificate https://github.com/jgm/pandoc/releases/download/2.14.2/pandoc-2.14.2-linux-amd64.tar.gz &&\
tar xvzf pandoc-2.14.2-linux-amd64.tar.gz --strip-components 1 -C /usr/local/
# install pandoc-crossref binary

RUN wget -c --no-check-certificate https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.12.0c/pandoc-crossref-Linux.tar.xz && \
tar -xf pandoc-crossref-Linux.tar.xz &&\
mv pandoc-crossref /usr/local/bin/ &&\
chmod a+x /usr/local/bin/pandoc-crossref &&\
mkdir -p /usr/local/man/man1 &&\ 
mv pandoc-crossref.1  /usr/local/man/man1 

RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

CMD ["/bin/bash"]