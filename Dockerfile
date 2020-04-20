FROM fluxcd/flux:1.19.0

RUN /sbin/apk add --update make

ADD https://github.com/bitnami/kubecfg/releases/download/v0.16.0/kubecfg-linux-amd64 /usr/local/bin/kubecfg

RUN chmod a+x /usr/local/bin/kubecfg
