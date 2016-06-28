#! /bin/sh
set -eu
pattern=$1

git filter-branch --index-filter "git rm -r --cached --ignore-unmatch ${pattern}" -- --all
rm -rf .git/refs/original && git reflog expire --all && git gc --aggressive --prune
git prune --expire=now
git reflog expire --expire-unreachable=now --rewrite --all
git repack -a -d
git prune-packed

echo "HOORAY!  If you're happy, now run:"
echo "    git push --all"
