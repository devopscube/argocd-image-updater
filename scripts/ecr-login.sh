#!/bin/sh
aws ecr get-authorization-token \
  --region us-west-2 \
  --output text \
  --query 'authorizationData[].authorizationToken' | base64 -d
