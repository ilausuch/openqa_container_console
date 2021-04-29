#FROM opensuse/tumbleweed
FROM opensuse/leap

RUN zypper in -y openQA-devel
RUN mkdir /etc/openqa

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh
#RUN echo -e "[openqa.opensuse.org]\nkey = C819FB6CE16420D0\nsecret = 313B7D787EF19CBB" > /etc/openqa/client.conf

ENTRYPOINT [ "/entrypoint.sh" ]