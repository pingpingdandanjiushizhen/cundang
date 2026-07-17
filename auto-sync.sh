#!/bin/bash
cd /d/study/cundang

git add -A
git diff --cached --quiet && exit 0

git commit -m "auto-sync $(date '+%Y-%m-%d %H:%M')"
git push origin main 2>&1
