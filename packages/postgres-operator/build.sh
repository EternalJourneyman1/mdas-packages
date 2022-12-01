#!/bin/bash

set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

POSTGRES_FOR_KUBERNETES_TARGET=$PROJECT_DIR/postgres-opertator/postgres-operator
VMWARE_POSTGRES_TARGET=$PROJECT_DIR/postgres-for-kubernetes-v1.9.1
VMWARE_POSTGRES_TARGET_TAR=$PROJECT_DIR/postgres-for-kubernetes-v1.9.1.tar.gz

mkdir -p $PROJECT_DIR/postgres-operator

# INSTALL & UNPACK
#cp ./postgres-for-kubernetes-v1.9.1.tar.gz $VMWARE_POSTGRES_TARGET_TAR
tar xfv $VMWARE_POSTGRES_TARGET_TAR
cp -r $VMWARE_POSTGRES_TARGET /tmp

rm postgres-for-kubernetes-v1.9.1.tar.gz
#curl -o VMWARE_POSTGxRES_TARGET.tgz https://spring-modern-data-architecture-files.s3.us-west-1.amazonaws.com/postgres-for-kubernetes-v1.9.1.tar.gz
