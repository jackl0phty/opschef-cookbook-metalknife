#
# Cookbook Name:: metalknife
# Recipe:: default
#
# Copyright 2015, Jackl0phty LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Create directory ~/.aws.
directory "node['metalknife']['metalknife_homedir']/node['metalknife']['metalknife_user']/.aws" do
  owner "root"
  group "root"
  mode "0755"
  action :create
  not_if "test -d node['metalknife']['metalknife_homedir']/node['metalknife']['metalknife_user']/.aws"
end


# metalknife config for the AWS provisioner.
if node['metalknife']['default_provisioner'] == 'aws'

  # Create metalknfie config file ~/.aws/config
  template "node['metalknife']['metalknife_homedir']/node['metalknife']['metalknife_user']/.aws/config" do
    source "aws_config.conf.erb"
    owner "root"
    group "root"
    mode "0644"
    not_if "test -f node['metalknife']['metalknife_homedir']/node['metalknife']['metalknife_user']/.aws/config"
  end

end  
