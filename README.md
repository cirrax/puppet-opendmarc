# opendmarc puppet module

[![Build Status](https://travis-ci.org/cirrax/puppet-opendmarc.svg?branch=master)](https://travis-ci.org/cirrax/puppet-opendmarc)
[![Puppet Forge](https://img.shields.io/puppetforge/v/cirrax/opendmarc.svg?style=flat-square)](https://forge.puppetlabs.com/cirrax/opendmarc)
[![Puppet Forge](https://img.shields.io/puppetforge/dt/cirrax/opendmarc.svg?style=flat-square)](https://forge.puppet.com/cirrax/opendmarc)
[![Puppet Forge](https://img.shields.io/puppetforge/e/cirrax/opendmarc.svg?style=flat-square)](https://forge.puppet.com/cirrax/opendmarc)
[![Puppet Forge](https://img.shields.io/puppetforge/f/cirrax/opendmarc.svg?style=flat-square)](https://forge.puppet.com/cirrax/opendmarc)

#### Table of Contents

1. [Overview](#overview)
1. [Usage](#usage)
1. [Reference](#reference)
1. [Contribuiting](#contributing)


## Overview

This module is used to configure opendmarc

## Usage

To start using opendmarc you need to include the opendmarc main class
and tell your're mta to use the milter.

A minimal example might be:

~~~
class{'opendmarc'}
~~~

If you like to use hiera, you can define:

~~~
---
opendmarc::configs:
  RejectFailures: true
  Syslog: true
~~~

## Reference

All classes are documented in the manifests.


## Contributing

Please report bugs and feature request using GitHub issue tracker.

For pull requests, it is very much appreciated to check your Puppet manifest with puppet-lint
and the available spec tests  in order to follow the recommended Puppet style guidelines
from the Puppet Labs style guide.

### Authors

This module is mainly written by [Cirrax GmbH](https://cirrax.com).

See the [list of contributors](https://github.com/cirrax/puppet-opendmarc/graphs/contributors)
for a list of all contributors.
