#!/bin/bash

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

POSTGRES_FOR_KUBERNETES_TARGET=$PROJECT_DIR/postgres-opertator/postgres-operator
VMWARE_POSTGRES_TARGET=$PROJECT_DIR/postgres-for-kubernetes-v1.9.1

cd $VMWARE_POSTGRES_TARGET

docker load -i ./images/postgres-instance

docker load -i ./images/postgres-operator
