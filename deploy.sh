#!/bin/bash

pnpm build

rsync -avP --delete dist/ nas:docker/my-website/blog/dist/

ssh nas "chmod -R 755 /volume1/docker/my-website/blog/dist"

echo "Blog deployed."