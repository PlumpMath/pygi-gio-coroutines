#!/bin/bash

cd `dirname $0`
PYTHONPATH=".." python -m coverage run --source gio_coroutines -m pytest "$@"

if [ "$?" != "0" ]; then
	exit 1
fi

python -m coverage report -m
