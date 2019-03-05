#!/usr/bin/env sh

echo "Putting node_modules on diet..."
echo ""
echo "Before starvation: "$(du -hs .)
echo "Files: "$(find node_modules/ -type f | wc -l)

# Common unneeded files
find . -type d -name node_modules -prune -exec find {} -type f \( \
    \( -name '*.ts' -and \! -name '*.d.ts' \) \
  \) -print0 \; | xargs -0 rm -rf

# Common unneeded directories
find . -type d -name node_modules -prune -exec find {} -type d \( \
    -name website \
  \) -print0 \; | xargs -0 rm -rf

echo ""
echo "After starvation: "$(du -hs .)
echo "Files: "$(find node_modules/ -type f | wc -l)
