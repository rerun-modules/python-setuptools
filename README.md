[python-setuptools](http://pypi.python.org/pypi/setuptools), which uses Python&apos;s setuptools, is an interface to generating system packaging from Python PyPI distributions.


This python-setuptools module will generate a system package (e.g. RPM) based on a versioned PyPI archive suitable for distribution.

The system package generated by this module may then be installed by the system packaging tool for the created package.


* Use python-setuptools:build to generate an RPM based on a versioned PyPI package.

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
