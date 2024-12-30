#!/bin/bash

set -e

echo "Before the script"

nonexistentcommand # stops at line 7 due to set -e command

echo "After the script"
