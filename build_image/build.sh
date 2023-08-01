#!/bin/bash

source build.env

echo "Building the sparkyideainc/odoo:$ODOO_VERSION image..."
docker build \
    --build-arg ODOO_VERSION=$ODOO_VERSION \
    -t sparkyideainc/odoo:$ODOO_VERSION-arm64-dev .
