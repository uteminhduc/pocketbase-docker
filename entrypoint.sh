#!/bin/sh

# Clone the GitHub repository with credentials
git clone https://${GITHUB_USERNAME}:${GITHUB_ACCESS_TOKEN}@github.com/${GITHUB_USERNAME}/${GITHUB_REPOSITORY}.git /tmp/repository

# Copy the required folders from the cloned repository
cp -r /tmp/repository/pb_migrations /pb
cp -r /tmp/repository/pb_hooks /pb
cp -r /tmp/repository/pb_public /pb

./pocketbase serve --http=0.0.0.0:8090 --encryptionEnv=$PB_ENCRYPTION_KEY --origins=$ORIGINS --automigrate=$AUTOMIGRATION