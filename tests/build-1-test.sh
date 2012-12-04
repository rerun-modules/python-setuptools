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


it_succeeds_with_Pygments() {
   tmpDir=$(mktemp -d)
   rerun python-setuptools:build --version 1.5 --directory "${tmpDir}" --name Pygments
   rpm -qp "${tmpDir}/Pygments-1.5-1.noarch.rpm"
   rm -rf "${tmpDir}"
}

it_succeeds_with_PygmentsAndPackager() {
   tmpDir=$(mktemp -d)
   rerun python-setuptools:build --version 1.5 --directory "${tmpDir}" --name Pygments --packager "a sonbitch packager"
   rpm -qp "${tmpDir}/Pygments-1.5-1.noarch.rpm"
   echo rm -rf "${tmpDir}"
}
#
#it_succeeds_with_PygmentsAndRelease() {
#   tmpDir=$(mktemp -d)
#   rerun python-setuptools:build --version 1.5 --package-release 5 --directory "${tmpDir}" --name Pygments 
#   rpm -qp "${tmpDir}/Pygments-1.5-5.noarch.rpm"
#   rm -rf "${tmpDir}"
#}
#
#it_succeeds_with_NewPackageNameAndRelease() {
#   tmpDir=$(mktemp -d)
#   rerun python-setuptools:build --version 1.5 --package-name MyPygments --package-release 5 --directory "${tmpDir}" --name Pygments 
#
#   if [ ! -f ${tmpDir}/MyPygments-1.5-5.noarch.rpm ]
#   then
#      echo "expected package filename \"${tmpDir}/MyPygments-1.5-5.noarch.rpm\" was not generated" 1>&2
#      return 1
#   fi
#
#   queryName="$(rpm -qp "${tmpDir}/MyPygments-1.5-5.noarch.rpm" --qf '%{NAME}')"
#   if [ "${queryName}" != MyPygments ]
#   then
#      echo "queried package name ${queryName} does not match expected name:  MyPygments" 1>&2
#      return 1
#   fi
#
#   return 0
#}
#
