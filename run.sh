#!/bin/bash

RECIPE=${1:-recipe.rb}

DEPENDS=$(fpm-cook inspect "${RECIPE}" | jq '.build_depends + .depends | length')
if [[ $DEPENDS -gt 0 ]] ; then
    echo "===> Found depends in ${RECIPE}, updating apt cache..."
    apt-get update -qq -y
fi

if fpm-cook -q package --tmp-root /tmp --pkg-dir pkg/${DISTRIBUTION}/${RELEASE} ${RECIPE} ;then
    chown --quiet --recursive ${pkg_dir_uid:-0} {cache,pkg}
    echo "===> Package built successfully"
else
    echo "===> ERROR: Something went wrong with your recipe, bailing out."
    chown --quiet --recursive ${pkg_dir_uid:-0} cache
    exit 1
fi
