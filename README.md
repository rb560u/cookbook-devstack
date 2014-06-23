Description
===========
Installs [devstack](http://devstack.org/) sources and a valid config file for
OpenStack development and testing.

Devstack is cloned to `/root/devstack`.

Requirements
============
* chef
* Ruby 1.9 (latest version)
* bundler

Testing
========
Install gem dependencies
 
    $ bundle install
 
Install cookbooks
 
    $ bundle exec berks install
 
Run tests
 
    $ bundle exec strainer test

Attributes
==========

Directory for git clone

    default["devstack"]["git_repo"] = "/root/devstack"

Variables used in devstack/localrc

    default["devstack"]["dest"] = "/opt/stack"
    default["devstack"]["enabled_services"] = ",tempest"
    default["devstack"]["admin_password"] = "pass"
    default["devstack"]["mysql_password"] = "pass"
    default["devstack"]["rabbit_password"] = "pass"
    default["devstack"]["service_password"] = "pass"
    default["devstack"]["service_token"] = "servtoken"
    default["devstack"]["host_ip"] = "127.0.0.1"
    default["devstack"]["logfile"] = "stack.sh.log"
    default["devstack"]["logdays"] = "1"
    default["devstack"]["log_color"] = "False"
    default["devstack"]["screen_logdir"] = "/opt/stack/logs/screen"
    default["devstack"]["api_rate_limit"] = "False"
    default["devstack"]["apt_fast"] = "True"
    default["devstack"]["reclone"] = "yes"

Usage
=====
Add `recipe[cookbook-devstack]` to a run list, or `include_recipe
'cookbook-devstack'`.

License and Author
==================

Author:: Sean Gallagher (<sean@torandu.com>)

Copyright 2012, Sean Gallagher

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
