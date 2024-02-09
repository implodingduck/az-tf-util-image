FROM mcr.microsoft.com/azure-cli:cbl-mariner2.0

#RUN tdnf install -y dnf-plugins-core
#RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
RUN tdnf -y install terraform git jq curl nginx vim nslookup

RUN groupadd -g 1000 nginx \
    && useradd -g 1000 -u 1000 -m nginx

USER nginx

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]