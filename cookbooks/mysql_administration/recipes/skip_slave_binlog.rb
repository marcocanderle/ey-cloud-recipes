#
# Cookbook Name:: skip_slave_binlog
# Recipe:: default
#
if ['db_slave'].include?(node[:instance_role])
  template "/etc/mysql.d/ey_skip_slave_binlog.cnf" do
    source "ey_skip_slave_binlog.cnf.erb"
    owner 'root'
    group 'root'
    mode 0644
  end
end