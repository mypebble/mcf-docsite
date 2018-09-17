#!/usr/bin/env bash

## Based on http://benlopatin.com/deploying-static-sites-circle-ci/

AWS_ACCESS_KEY_ID=$NEW_AWS_ID AWS_SECRET_ACCESS_KEY=$NEW_AWS_SECRET aws s3 sync $SYNC_DIR s3://$S3_BUCKET --delete --acl public-read --cache-control max-age=120
