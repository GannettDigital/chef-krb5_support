#
# Cookbook Name:: krb5-support
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'krb5'

begin
  r = resources(:template => '/etc/krb5.conf')
  r.cookbook 'krb5-support'
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn 'Cound not find template to override!'
end
