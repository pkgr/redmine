#!/bin/bash

set -ex

for file in config/*.yml.example; do
  cp $file config/$(basename $file .example)
done


cat > config/database.yml <<EOF
# PostgreSQL configuration example
production:
  adapter: postgresql
  database: redmine
  host: localhost
  username: postgres
  password: "postgres"
EOF

sudo service postgresql start
