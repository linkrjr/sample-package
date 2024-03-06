#!/bin/sh
REPO="https://$GITHUB_ACTOR:$TOKEN@github.com/$GITHUB_REPOSITORY.git"
OLD_VERSION="$1"
NEW_VERSION="$2"

echo $NEW_VERSION > VERSION

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git add VERSION
git commit -m "Bump version from $OLD_VERSION to $NEW_VERSION [skip ci]"
git push $REPO

# check version is bumped
echo "CURRENT_VERSION=${NEW_VERSION}" >> $GITHUB_OUTPUT
