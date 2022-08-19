#!/bin/bash
VOL_NAME="drupal7docker_d7_data"

echo "Are you sure? This will kill existing volumes."
exit;

docker volume create ${VOL_NAME}
docker run --rm -v ${VOL_NAME}:/temporary/html drupal:7.91-apache cp -aRT /var/www/html /temporary/html
