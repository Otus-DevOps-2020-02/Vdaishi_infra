#!/bin/bash 
git clone -b monolith https://github.com/express42/reddit.git\ncd reddit && bundle install\npuma -d