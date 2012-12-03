# python-setuptools

Interface module to the python setuptools for building and distributing python packages

## SYNOPSIS

    rerun [ARGS] python-setuptools: [ build ] [OPTIONS]

## README

[python-setuptools](http://pypi.python.org/pypi/setuptools), which uses Python&apos;s setuptools, is an interface to generating system packaging from Python PyPI distributions.


This python-setuptools module will generate a system package (e.g. RPM) based on a versioned PyPI archive. 

The system package generated by this module may then be installed by the native system packaging tool instead of tools like 
[easy_install](http://packages.python.org/distribute/easy_install.html) or [pip](http://pypi.python.org/pypi/pip).


* Use python-setuptools:build to generate an RPM based on a versioned PyPI distribution package.

Consult README.md in the command and options directories for further description of using these commands.

Requirements
------------

* Internet access in order for the module to download archives from PyPI.
* A Red Hat/CentOS 5 or 6 instance

Installation
------------
The following instructions describe how to install Rerun itself and the set of modules necessary to use the Rundeck module (and others):

* Install [Rerun](http://rerun.github.com/rerun) itself by obtaining the latest "rerun" RPM package link from [Rerun Downloads](https://github.com/rerun/rerun/downloads) page and executing the following command (replacing example URL):
<pre>
[root@centos62 ~]# rpm -Uvh https://github.com/downloads/rerun/rerun/rerun-1.0-129.noarch.rpm
Retrieving https://github.com/downloads/rerun/rerun/rerun-1.0-129.noarch.rpm
Preparing...                ########################################### [100%]
   1:rerun                  ########################################### [100%]
</pre>

* Install the latest version of the rerun-modules Yum repo definition by obtaining the latest "rerun-modules-repo" (<i>not</i> "rerun-modules-yum-repo")  RPM package link from [Rerun Modules Downloads](https://github.com/rerun-modules/rerun-modules/downloads) and executing the following command (replacing example URL):
<pre>
[root@centos62 ~]# rpm -Uvh https://github.com/downloads/rerun-modules/rerun-modules/rerun-modules-repo-1.0-21.noarch.rpm
Retrieving https://github.com/downloads/rerun-modules/rerun-modules/rerun-modules-repo-1.0-21.noarch.rpm
Preparing...                ########################################### [100%]
   1:rerun-modules-repo     ########################################### [100%]
</pre>

* Install all the latest rerun modules (including this Rundeck module):
<pre>
[root@centos62 ~]# yum -y --disablerepo '*' --enablerepo 'rerun-modules' install '*'
.
.
.
Complete!
</pre>

* Review the available modules. e.g:
<pre>
[root@centos62 ~]# which rerun
/usr/bin/rerun
[root@centos62 ~]# rerun
Available modules in "/usr/lib/rerun/modules":
  apache-maven: "Rerun module to manage the apache-maven distribution"
  github: "Rerun module to manage working with Github"
  jboss-as: "Rerun module to manage working with the JBoss application server"
  jenkins: "Rerun module to manage Jenkins installation, configuration and operations"
  mysql: "Rerun module to manage working with the MySQL database server"
  python-setuptools: "Interface module to the python setuptools for building and distributing python packages"
  rpm: "Manage the full life-cycle of RPM packages"
  rundeck: "Rerun module to manage Rundeck installation configuration and operations"
  ssh: "Rerun module for managing secure shell client and server usage"
  stubbs: "Simple rerun module builder"
</pre>

* Note that several commands rely on xmlstarlet(1) which is available for installation from [EPEL](http://fedoraproject.org/wiki/EPEL):
<pre>
[root@centos62 ~]# yum -y install xmlstarlet
.
.
.
Complete!
</pre>

## COMMANDS

* [build](commands/build/index.html): Produce a package of indicated format based on a PyPI based distribution

## OPTIONS

* [directory](options/directory/index.html): Directory location to produce the rpm
* [format](options/format/index.html): output packaging format to produce
* [name](options/name/index.html): name of the PyPI archive to package
* [url](options/url/index.html): base url to the python PyPI distribution archives
* [version](options/version/index.html): version of the PyPI distribution to package

## TESTS

* [build-1](tests/build-1.html)

## LIBRARY

* [functions.sh](lib/functions.html)

## LICENSE



## METADATA

* `NAME` = python-setuptools
* `DESCRIPTION` = "Interface module to the python setuptools for building and distributing python packages"
* `SHELL` = "bash"
* `VERSION` = 1.0.0
* `REQUIRES` = 
* `EXTERNALS` = rpm-build,python-setuptools

----

*Generated by stubbs:docs Mon Dec  3 09:38:33 PST 2012*