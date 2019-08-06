include_recipe 'deploy'

Chef::Log.debug("JP Custome Deployment")
execute("sudo node /srv/www/app_1/current/server.js")
