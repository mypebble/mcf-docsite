#!/usr/bin/env bash

## Based on http://benlopatin.com/deploying-static-sites-circle-ci/
aws s3 sync $SYNC_DIR s3://$S3_BUCKET/$S3_DIR --delete --acl public-read --cache-control max-age=120
