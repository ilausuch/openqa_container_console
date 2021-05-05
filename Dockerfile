#FROM opensuse/tumbleweed
FROM opensuse/leap

RUN zypper addrepo -G -cfp 91 https://download.opensuse.org/repositories/devel:/openQA:/Leap:/15.2/openSUSE_Leap_15.2 devel-openQA-Leap
RUN zypper in -y openQA-devel os-autoinst-distri-opensuse-deps
RUN mkdir /etc/openqa

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh
#RUN echo -e "[openqa.opensuse.org]\nkey = C819FB6CE16420D0\nsecret = 313B7D787EF19CBB" > /etc/openqa/client.conf

ENTRYPOINT [ "/entrypoint.sh" ]
