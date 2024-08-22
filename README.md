# Reproduction for issue

[.github/workflows/docker.yml](https://github.com/hamstercat/wrangler-docker-reproduction/blob/main/.github/workflows/docker.yml) uses the `node:22` docker image to install wrangler (through npm), serve the `/dist` folder, and then query the `index.html` file.

The `Request the page` step has a timeout of 1 minute, which never finishes.

If you remove the `Run wrangler` step, fetching the `index.html` fails right away.

