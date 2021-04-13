# FullstacksJS Docker Registry

The fullstacks docker images.

## fullstacksjs/lerna

A `node` image with pre-installed lerna and entrypoint script to init and lunch `monorepo` projects.

Environment Variables:

| name      | required | description                                                |
| --------- | -------- | ---------------------------------------------------------- |
| WORKSPACE | ✔        | workspace directory in mornorepo used as CWD in entrypoint |

## fullstacksjs/node

A `node` image with an entrypoint script for the development environment.
