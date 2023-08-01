#!/bin/bash
set -e

# Start Odoo at launch of docker container
if [ "$1" = 'production' ] || [ "$1" = 'prod' ]; then
    shift
    cd odoo
    exec ./odoo-bin \
        "--db_host=$DB_HOST" \
        "--db_port=$DB_PORT" \
        "--db_user=$DB_USER" \
        "--db_password=$DB_PASSWORD" \
        "--dev" \
        "xml" \
        $ODOO_EXTRA_ARGS "$@"
# Start Odoo manually with vscode or pycharm
elif [ "$1" = 'development' ] || [ "$1" = 'dev' ]; then
    tail -f /dev/null
else
    echo "Error: Please specify a valid mode (development, production)"
    exit 1
fi
