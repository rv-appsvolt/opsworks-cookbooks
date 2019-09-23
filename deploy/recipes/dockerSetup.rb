include_recipe 'deploy'
Chef::Log.info("Ready to Deploy")


execute("sudo apt install apt-transport-https ca-certificates curl software-properties-common")
Chef::Log.info("apt-transport-https ca-certificates")
execute("curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -")
Chef::Log.info("sudo apt-key add")
execute("sudo apt-key fingerprint 0EBFCD88")
Chef::Log.info("apt-key fingerprint")
#execute("sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'")
execute("sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu/dists/trusty/stable/binary-amd64/Packages'")
Chef::Log.info("sudo add-apt-repository")
execute("sudo apt update")
Chef::Log.info("sudo apt update")
execute("sudo apt install docker-ce")
Chef::Log.info("sudo apt install docker-ce")
execute("sudo usermod -aG docker $USER")
Chef::Log.info("sudo usermod -aG docker $USER")
