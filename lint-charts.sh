#!/usr/bin/env bash

#
# Script to Lint all charts
#

echo "Linting all Charts..."

set -e

LOCAL_HELM_MOJALOOP_REPO_URI=${HELM_MOJALOOP_REPO_URI:-'https://docs.mojaloop.io/helm/repo'}

trap 'echo "Command failed...exiting. Please fix me!"' ERR


if [ "$1" ]; then
    declare -a charts=("$1")
else
    declare -a charts=(
        account-lookup-http-oracle-svc
        account-lookup-svc
        accounts-and-balances-builtin-ledger-grpc-svc
        accounts-and-balances-coa-grpc-svc
        admin-ui
        auditing-svc
        authentication-svc
        authorization-svc
        fspiop-api-svc
        logging-svc
        participants-svc
        platform-configuration-svc
        quoting-svc
        settlements-api-svc
        settlements-command-handler-svc
        settlements-event-handler-svc
        transfers-api-svc
        transfers-command-handler-svc
        transfers-event-handler-svc
        thirdparty/console
        thirdparty/elasticsearch
        thirdparty/kafka
        thirdparty/mongo-express
        thirdparty/mongodb
        thirdparty/redis
    )
fi

echo "\n"

for chart in "${charts[@]}"
do
    echo "---=== Linting $chart ===---"
    helm lint $chart
done

echo "\
Chart linting completed.\n \
Ensure you check the output for any errors. \n \
Ignore any http errors when connecting to \"local\" chart repository.\n \
\n \
Happy Helming!
"