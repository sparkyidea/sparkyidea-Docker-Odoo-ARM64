#!/bin/bash

source build.env

echo "Building the sparkyideainc/odoo:unofficial-$ODOO_VERSION-arm64 image..."
docker build \
    --build-arg ODOO_VERSION=$ODOO_VERSION \
    -t sparkyideainc/odoo:unofficial-$ODOO_VERSION-arm64 .
