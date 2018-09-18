#!/usr/bin/env bash
VERSION="aws-rotate-iam-keys_$1_source.changes"

cd src
dch -i --distribution bionic --force-distribution

debuild -S -sa
cd ..
dput ppa:rhyeal/aws-rotate-iam-keys $VERSION