#!/bin/sh
source .env
curl -X POST \
     --fail \
     -F token=$TOKEN \
     -F ref=main \
     https://gitlab.com/api/v4/projects/$PROJECT_ID/trigger/pipeline