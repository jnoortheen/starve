#!/usr/bin/env sh

echo "Putting node_modules on diet..."
echo ""
echo "Before starvation: "$(du -hs .)
echo "Files: "$(find node_modules/ -type f | wc -l)

# Common unneeded files
find . -type d -name node_modules -prune -exec find {} -type f \( \
    -iname .DS_Store -or \
    -iname AUTHORS -or \
    -iname CHANGELOG -or \
    -iname CHANGELOG.md -or \
    -iname CONTRIBUTORS -or \
    -iname Gruntfile.js -or \
    -iname Gulpfile.js -or \
    -iname LICENCE -or \
    -iname LICENCE-BSD -or \
    -iname LICENCE-jsbn -or \
    -iname LICENCE-MIT -or \
    -iname LICENCE-MIT.txt -or \
    -iname LICENCE.BSD -or \
    -iname LICENCE.md -or \
    -iname LICENCE.txt -or \
    -iname LICENSE -or \
    -iname LICENSE-BSD -or \
    -iname LICENSE-jsbn -or \
    -iname LICENSE-MIT -or \
    -iname LICENSE-MIT.txt -or \
    -iname LICENSE.BSD -or \
    -iname LICENSE.md -or \
    -iname LICENSE.txt -or \
    -iname Makefile -or \
    -iname NOTICE.txt -or \
    -iname README -or \
    -iname README.md -or \
    \( -name '*.ts' -and \! -name '*.d.ts' \) \
  \) -print0 \; | xargs -0 rm -rf

# Common unneeded directories
find . -type d -name node_modules -prune -exec find {} -type d \( \
    -name __tests__ -or \
    -name .circleci -or \
    -name .github -or \
    -name .idea -or \
    -name .nyc_output -or \
    -name .vscode -or \
    -name assets -or \
    -name coverage -or \
    -name doc -or \
    -name docs -or \
    -name example -or \
    -name examples -or \
    -name gyp -or \
    -name images -or \
    -name node-gyp -or \
    -name node-pre-gyp -or \
    -name powered-test -or \
    -name test -or \
    -name tests -or \
    -name website \
  \) -print0 \; | xargs -0 rm -rf

echo ""
echo "After starvation: "$(du -hs .)
echo "Files: "$(find node_modules/ -type f | wc -l)
