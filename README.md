My Docker Builder
=================

This stupid script creates a docker image just for my use. Basically, it
installs some packages on top of a base image in upstream, and that's it.

Usage
-----

    ./run-docker [base]

Here, `[base]` is the base image literally passed to `FROM` in the Dockerfile,
e.g. `ubuntu:18.04`, `fedora:29`, etc.

Tips
----

Tips to run this tool from any working directory.

You can copy all files in this repository to `/usr/local/bin`, `$HOME/bin`, etc.
if you want to install this tool. Or, you can put a symbolic link somewhere in
your `PATH` environment variable.
