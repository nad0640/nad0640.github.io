#!/bin/bash
npm run build

now=$(date +"%Y-%m-%d-%T")
if [[ -d "dist" ]]; then
  cd dist
  git init
  git remote add origin git@github.com:nad0640/nad0640.github.io.git
  git add -A
  git commit -m "production: $now"
  git push -f origin main:master
fi
