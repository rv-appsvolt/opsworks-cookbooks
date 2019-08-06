include_recipe 'deploy'
Chef::Log.info("Ready to Deploy")
Chef::Log.info(node[:deploy])

node[:deploy].each do |current_path, deploy|  
  Chef::Log.info(deploy[:current_path])
end

Chef::Log.info("JP Custome Deployment Server Start")
# execute("sudo node /srv/www/app_1/current/server.js &")
Chef::Log.info("JP Custome Deployment Done")
