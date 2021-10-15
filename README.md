# gluon-container

> Container image for building [gluon][gluon] fimware images.

This readme uses [podman][podman], but other managers should work as well.

## Use

This image comes with a build script, which will take a gluon version as well as the the site config source via environment variables.
See `example.env`.

A volume will be created for the complete build output.

```
podman run --env-file example.env --volume </path/on/host>:/build gluon
```

If built successfully built, images will be under `</path/on/host>/output/images`.

## Build

```
podman build -t gluon .
```

[gluon]: https://github.com/freifunk-gluon/gluon
[podman]: https://podman.io
