#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2013, Katsuma Ito
#

if platform?('centos')
    include_recipe "yum::epel"
end

if platform?('amazon')
    include_recipe "yum::epel"
end

package_name = value_for_platform(
  ["centos", "amazon"] => {
      "default" => "redis"
  },
  ["ubuntu", "debian"] => {
      "default" => "redis-server"
  }
)

package package_name do
    action :install
end

service "redis" do
    service_name "redis-server"
    action [ :enable, :start ]
    supports [:restart]
end

template "/etc/redis.conf" do
    source "redis.conf.erb"
    notifies :restart, "service[redis]"
end
