#!/bin/sh
f="termine/$(date +%Y-%m)-meetup.md"
hugo new $f
code content/$f
