Chef::Log.info("Setting environment variables")

Chef::Log.info("Setting environment variables for current process")

Chef::Log.info("Setting environment variables for current process")
Chef::Log.info("JP- Node Env----")

# Chef::Log.info(node[:environment_variables])
# Chef::Log.info(node[:deploy][APP_SHORTNAME][:environment_variables])
# Chef::Log.info(deploy[:environment_variables])


node[:deploy].each do |current_path, deploy, environment_variables|

	Chef::Log.info(deploy[:environment_variables])
	deploy[:environment_variables].each do |name, value|
		ENV["#{name}"] = "#{value}"
	end

	Chef::Log.info("Writing variables to /etc/environment to have them after restart")
	template "/etc/environment" do
		source "environment.erb"
		mode "0644"
		owner "root"
		group "root"
		variables({
			:environment_variables => deploy[:environment_variables]
		})
	end

	Chef::Log.info("Creating shell file to export variables")
	template "/usr/local/bin/environment.sh" do
		source "environment.sh.erb"
		mode "0755"
		owner "root"
		group "root"
	end

	Chef::Log.info("Exporting variables for every new created process")
	execute "/usr/local/bin/environment.sh" do
		user "root"
		action :run
	end

end
Chef::Log.info("JP- Node END")
