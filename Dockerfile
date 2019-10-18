FROM weaveworks/flux:1.14.2

ADD https://github.com/bitnami/kubecfg/releases/download/v0.13.1/kubecfg-linux-amd64 /usr/local/bin/kubecfg

RUN chmod a+x /usr/local/bin/kubecfg
