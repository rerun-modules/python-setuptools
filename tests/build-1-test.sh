#!/usr/bin/env roundup
#
# This file contains the test plan for the `build` command.
#    
#/ usage:  rerun stubbs:test -m python-setuptools -p build [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "build"


it_fails_without_a_real_test() {
   tmpDir=$(mktemp -d)
   rerun python-setuptools:build --version 1.5 --directory "${tmpDir}" --name Pygments
   rpm -qp "${tmpDir}/Pygments-1.5-1.noarch.rpm"
   rm -rf "${tmpDir}"
}

