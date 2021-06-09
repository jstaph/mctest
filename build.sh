#!/usr/bin/env bash

ctainer=$(buildah from docker.io/nipreps/fmriprep:latest)
buildah run "$ctainer" -- touch /test
buildah commit "$ctainer" "${2:-jstaph/mctest}"
