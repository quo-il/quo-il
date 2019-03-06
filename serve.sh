#!/bin/bash

( sleep 2 ; open http://localhost:4000/ ) & &> /dev/null
bundle exec filewatcher --immediate --restart '**/*.yml' \
    'echo $FILENAME; bundle exec jekyll serve --port 4000 --host 0.0.0.0'
