#!/usr/bin/env bash
echo 'Filenames at GitHub Releases $TRAVIS_REPO_SLUG tag $TRAVIS_TAG:'
curl -s -H "Authorization: token $GitHub_auth_token" \
    https://api.github.com/repos/$TRAVIS_REPO_SLUG/releases/tags/$TRAVIS_TAG \
  | grep \"name\"
true