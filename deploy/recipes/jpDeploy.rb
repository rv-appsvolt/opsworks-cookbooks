include_recipe 'deploy'
Chef::Log.info("Ready to Deploy")
Chef::Log.info(node[:deploy])
Chef::Log.info("#{Application}")
Chef::Log.info("Stage one")

Chef::Log.info("JP Custome Deployment Server Start")
# execute("sudo node /srv/www/app_1/current/server.js &")
Chef::Log.info("JP Custome Deployment Done")
