#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f hpwren-image-used-for-inference.jpeg ]; then
    echo -e "$(c R)[error] The model has not generated the output hpwren-image-used-for-inference.jpeg"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output hpwren-image-used-for-inference.jpeg"
    mv hpwren-image-used-for-inference.jpeg ${OUTPUTS1}
fi
if [ ! -f model-inference-results.json ]; then
    echo -e "$(c R)[error] The model has not generated the output model-inference-results.json"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output model-inference-results.json"
    mv model-inference-results.json ${OUTPUTS2}
fi
