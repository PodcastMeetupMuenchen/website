#!/bin/sh
f="termine/$(date +%Y-%m)-meetup.md"
export LANG=de_DE
hugo new $f
code content/$f
