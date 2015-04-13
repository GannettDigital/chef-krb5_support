krb5_support Cookbook
=============

Description
-----------

This cookbook alters the krb5.conf file from the original krb5 cookbook so it includes the ability to turn off KDC and use DNS for realm. It also adds the ability to set the default domain for krb4 backwareds compatibility.

Requirements
------------

This cookbook requires the krb5 cookbook.

Attributes
----------

In addition to the standard krb5 attributes the following attributes have been added:

 * `krb5['k4b5']['krb5_conf']['libdefaults']['default_realm']` - Sets the default domain
 * `krb5['krb5']['krb5_conf']['realms']['default_realm_kdc_dns']` - Sets default realm KDC DNS.
 * `krb5['krb5']['krb5_conf']['realms']['default_realm_kdc_default_domain']` - Sets default realm domain.

Usage
-----

Here are two example roles to be used with this recipe.  The first, is
a single realm configuration, using the OHAI domain attribute for the realm.

```
name "krb5_domain"
description "Configures Kerberos 5 Authentication for domain realm"
override_attributes "krb5" => {
   "krb5_conf" => {
    "realms" => {
      "default_realm_kdc_dns": "realm.net",
      "default_realm_kdc_default_domain": "domain.net"
    }
  }
}
run_list "recipe[krb5_support]"
```

License and Authors
-------------------

Author:: Daniel Washko


Copyright:: © 2015 Gannett 

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License
