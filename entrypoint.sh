#!/bin/sh -l

set -eu # stop on error
node /get-stats/ "$1"
