#
# Cookbook Name:: vertx-gradle-template
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git '/home/vagrant/vertx-gradle-template' do
  repository 'https://github.com/vert-x/vertx-gradle-template.git'
  user 'vagrant'
  group 'vagrant'
  action :sync
end

execute 'launch module' do
  user 'vagrant'
  group 'vagrant'
  command <<-EOC
/sbin/start-stop-daemon \
--start \
--background \
--oknodo \
--user vagrant \
--group vagrant \
--chdir /home/vagrant/vertx-gradle-template \
--exec /home/vagrant/vertx-gradle-template/gradlew \
-- assemble runMod
EOC
end
