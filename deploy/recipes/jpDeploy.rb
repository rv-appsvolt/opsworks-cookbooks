include_recipe 'deploy'
Chef::Log.info("Ready to Deploy")
Chef::Log.info(node[:deploy])

node[:deploy].each do |current_path, deploy|
  Chef::Log.info(deploy[:current_path])
  execute("cd sudo node #{deploy[:current_path]}")
  execute("pwd")
  Chef::Log.info("sudo node #{deploy[:current_path]}/server.js &")
#   execute("sudo node #{deploy[:current_path]}/server.js &")
  Chef::Log.info("JP Custome Deployment Done")
end
