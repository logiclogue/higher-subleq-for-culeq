#!/bin/bash

./build/hsq -q -o $1 | node convert.js > $2
