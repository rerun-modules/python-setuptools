Use *python-setuptools:build* to generate a system package from an versioned PyPI distribution

The `python-setuptools:build` command requires parameters: name and a version of an existing PyPI distribution along with a directory to generate the system package.  

Curerntly the only supported packaging format is the RPM format.

Create an RPM system package 
-----------

Run the "build" command by specifying a versioned PyPI distribution and directory location

        [chuck@mvn-sdp-0 build]$  rerun python-setuptools:build --version 1.5 --directory /tmp/pygments --name Pygments
        [chuck@mvn-sdp-0 build]$ rpm -qip /tmp/pygments/Pygments-1.5-1.noarch.rpm 
        Name        : Pygments                     Relocations: /usr 
        Version     : 1.5                               Vendor: Georg Brandl <georg@python.org>
        Release     : 1                             Build Date: Mon Dec  3 09:30:31 2012
        Install Date: (not installed)               Build Host: mvn-sdp-0.local
        Group       : Development/Libraries         Source RPM: Pygments-1.5-1.src.rpm
        Size        : 4659872                          License: BSD License
        Signature   : (none)
        URL         : http://pygments.org/
        Summary     : Pygments is a syntax highlighting package written in Python.
        Description :
        
            Pygments
            ~~~~~~~~
        
            Pygments is a syntax highlighting package written in Python.
        
            It is a generic syntax highlighter for general use in all kinds of software
            such as forum systems, wikis or other applications that need to prettify
            source code. Highlights are:
        
            * a wide range of common languages and markup formats is supported
            * special attention is paid to details, increasing quality by a fair amount
            * support for new languages and formats are added easily
            * a number of output formats, presently HTML, LaTeX, RTF, SVG, all image       formats that PIL supports and ANSI sequences
            * it is usable as a command-line tool and as a library
            * ... and it highlights even Brainfuck!
        
            The `Pygments tip`_ is installable with ``easy_install Pygments==dev``.
        
            .. _Pygments tip:
               http://bitbucket.org/birkenfeld/pygments-main/get/tip.zip#egg=Pygments-dev
        
            :copyright: Copyright 2006-2012 by the Pygments team, see AUTHORS.
            :license: BSD, see LICENSE for details.
