# Starve

![Travis (.com)](https://img.shields.io/travis/com/93v/starve.svg)

Clean and remove unnecessary files and folders from `node_modules`

## Why

![Heaviest Objects In The Universe](https://i.redd.it/tfugj4n3l6ez.png)

The industry is moving towards serverless architecure, where the size of your
package is very important for performance. This tool makes your lambda
functions' packages significantly smaller.

## What

`starve` is a very simple tool to remove unnecessary files and folders
from `node_modules`, such as markdown, typescript source files, licenses etc.

## Using

```bash
npx starve
```
