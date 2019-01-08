#!/bin/bash

GIT_USERNAME=''
GIT_PASSWORD=''

using_github=false
using_bitbucket=false

if [[ -z "${ATLANTIS_GH_USER}" ]]; then
  # Do Nothing
  using_github=false
else
  GIT_USERNAME="${ATLANTIS_GH_USER}"
  GIT_PASSWORD="${ATLANTIS_GH_TOKEN}"
fi

if [[ -z "${ATLANTIS_BITBUCKET_USER}" ]]; then
  # Do nothing
  using_bitbucket=false
else
  GIT_USERNAME="${ATLANTIS_BITBUCKET_USER}"
  GIT_PASSWORD="${ATLANTIS_BITBUCKET_TOKEN}"
fi

echo username=$GIT_USERNAME
echo password=$GIT_PASSWORD