# Description

## Overview

This cookbook installs and configures [MailHog](https://github.com/mailhog/MailHog)

### Tested on

* Debian 9
* Ubintu 18.04
* Centos 7

# Requirements


## Chef Client:

* chef (>= 14.0) ()

## Platform:

* ubuntu (>= 16.04)
* debian (>= 9.0)
* centos (>= 7.0)

## Cookbooks:

*No dependencies defined*

# Attributes

* `node['mailhog']['version']` -  Defaults to `v1.0.0`.
* `node['mailhog']['install_path']` -  Defaults to `/usr/local/bin`.
* `node['mailhog']['url_prefix']` -  Defaults to `nil`.
* `node['mailhog']['http_port']` -  Defaults to `8025`.
* `node['mailhog']['smtp_port']` -  Defaults to `587`.

# Recipes

* [mailhog::config](#mailhogconfig)
* [mailhog::default](#mailhogdefault)
* [mailhog::install](#mailhoginstall)

## mailhog::config

configure MailHog

## mailhog::default

main recipe

## mailhog::install

install MailHog

# License and Maintainer

Maintainer:: Paxful (<nikolay.antsiferov@paxful.com>)

Source:: https://github.com/paxful/chef-mailhog

Issues:: https://github.com/paxful/chef-mailhog/issues

License:: MIT
