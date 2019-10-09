Chef::Log.info("Prisma deploy start")
node[:deploy].each do |current_path, deploy|
	Chef::Log.info(deploy[:current_path])
	Chef::Log.info("ha ha")
	if(File.directory?(deploy[:current_path]))
		Chef::Log.info("directory available")
	else
		Chef::Log.info("directory not available")
	end

	if(File.directory?(deploy[:current_path]))
	     IS_RUNNING= `sudo docker ps -q`
	     Chef::Log.info("docker checking2")
	     Chef::Log.info(IS_RUNNING)
	     if(IS_RUNNING != '')
		     Chef::Log.info("start prisma deploy")
		     execute("cd #{deploy[:current_path]} && prisma deploy --force")
		     Chef::Log.info("prisma deploy")
	     end
	else	
		Chef::Log.info("else")     
	end

	Chef::Log.info("JP- Node END")
end
