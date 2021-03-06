FROM gcr.io/cloudshell-images/cloudshell:latest

ENV TERRAFORM_VERSION="0.13.6" \
    HELM_VERSION="v3.8.0" \
    HELM_FILE="/usr/local/bin/helm"

WORKDIR /tmp

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils && \
    apt-get -y install terraform=${TERRAFORM_VERSION} --allow-downgrades && \
    [[ -f ${HELM_FILE} ]] && rm -f $HELM_FILE && \
    curl --silent --show-error --fail --location --output get_helm.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get && \
    chmod 700 get_helm.sh && \
    ./get_helm.sh --version "${HELM_VERSION}" && \
    rm get_helm.sh
