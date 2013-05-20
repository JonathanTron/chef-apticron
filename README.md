apticron Cookbook
=================

Installs and configure apticron to receive security updates by email.

Requirements
------------

#### platforms
- `ubuntu` - apticron has only been tested on ubuntu

Attributes
----------

#### apticron::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['email']</tt></td>
    <td>Array</td>
    <td>list of email to be notifies by apticron</td>
    <td><tt>["root"]</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['diff_only']</tt></td>
    <td>String</td>
    <td>"1" will only send diff of the updates since last email, "0" will always send all updates</td>
    <td><tt>"0"</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['listchanges_profile']</tt></td>
    <td>String</td>
    <td>option sent to the apt-listchanges's --profile option</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['system']</tt></td>
    <td>String</td>
    <td>sets a name for the server instead of the default apticron of `hostname -f`</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['ipaddressnum']</tt></td>
    <td>String</td>
    <td>sets the maximal number of IP addresses apticron will display, it defaults to 1 per family type (inet, inet6)</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['ipaddresses']</tt></td>
    <td>Array</td>
    <td>sets the list of reachable addresses for this node, apticron will try to guess them using `ip`</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['notify_holds']</tt></td>
    <td>String</td>
    <td>"1" will include new versions of packages on hold in your system in notification, "0" will prevent it</td>
    <td><tt>"1"</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['notify_new']</tt></td>
    <td>String</td>
    <td>"1" will include packages which are not installed in your system in notification, "0" will prevent it</td>
    <td><tt>"1"</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['custom_subject']</tt></td>
    <td>String</td>
    <td>sets the subject to be used for notification emails</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['apticron']['config']['custom_from']</tt></td>
    <td>String</td>
    <td>sets the from to be used for notification emails</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

Usage
-----

Just include `apticron` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[apticron]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Author:: Jonathan Tron (<jonathan@openhood.com>)

Copyright 2013, Openhood S.E.N.C.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
