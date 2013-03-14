#
# Cookbook Name:: openjdk
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

jdk_version = node['openjdk']['jdk_version'].to_i

if platform?("centos")
  ["java-1.#{jdk_version}.0-openjdk","java-1.#{jdk_version}.0-openjdk-devel"].each do |pkg|
    package pkg do
      action :install
    end
  end
end
