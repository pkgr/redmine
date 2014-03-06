#!/bin/bash

set -ex

for file in config/*.yml.example; do
  cp $file config/$(basename $file .example)
done
