#!/bin/bash

bundle exec jekyll build 1>&2
cat _site/fb-post-pre.html | awk '{gsub("<[^>]*>", "")}1' 