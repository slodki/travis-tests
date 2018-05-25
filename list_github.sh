#!/usr/bin/env bash
echo 'Filenames at GitHub Releases:'
curl -q -H "Authorization: token $GitHub_auth_token" \
    https://api.github.com/repos/$TRAVIS_REPO_SLUG/releases/tags/$TRAVIS_TAG \
  | grep \"name\"
true