#!/bin/bash
watch -n 1 grep "BUILD SUCCESS" -A 5 ~/.build.log
