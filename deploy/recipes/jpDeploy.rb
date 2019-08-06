include_recipe 'deploy'

Chef::Log.debug("JP Custome Deployment Server Start")
execute("sudo node /srv/www/app_1/current/server.js &")
Chef::Log.debug("JP Custome Deployment Done")
