#!/usr/bin/env bash

REGISTRY="" docker buildx bake --file docker-bake.hcl
