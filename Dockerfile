FROM alpine:3.15.2

RUN wget -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/`wget -q -O - https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && wget -O helm.tar.gz https://get.helm.sh/helm-v3.2.0-linux-amd64.tar.gz \
 && tar xzf helm.tar.gz \
 && rm helm.tar.gz \
 && mv linux-amd64/helm /usr/local/bin/helm \
 && chmod +x /usr/local/bin/helm \
 && rm -r linux-amd64
