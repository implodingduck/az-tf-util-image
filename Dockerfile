FROM mcr.microsoft.com/azure-cli:cbl-mariner2.0

#RUN tdnf install -y dnf-plugins-core
#RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
RUN tdnf -y install terraform git jq curl nginx vim
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]