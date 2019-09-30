include_recipe 'deploy'
Chef::Log.info("Ready to Deploy")


#execute("sudo apt install apt-transport-https ca-certificates curl software-properties-common")
#Chef::Log.info("apt-transport-https ca-certificates")
#execute("curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -")
#Chef::Log.info("sudo apt-key add")
#execute("sudo apt-key fingerprint 0EBFCD88")
#Chef::Log.info("apt-key fingerprint")
#execute("sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'")
#Chef::Log.info("sudo add-apt-repository")
#execute("sudo apt-get autoclean")
#execute("sudo apt-get autoremove")
#execute("sudo apt-get update –fix-missing")
#Chef::Log.info("sudo apt update")
#execute("sudo apt install docker-ce")
#Chef::Log.info("sudo apt install docker-ce")
#execute("sudo usermod -aG docker $USER")
#Chef::Log.info("sudo usermod -aG docker $USER")
#execute("sudo apt install apt-transport-https ca-certificates curl software-properties-common")

execute("sudo apt-get remove docker docker-engine docker.io")
execute("sudo apt-get update")
execute("sudo apt-get install apt-transport-https ca-certificates curl software-properties-common")
execute("sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common")
execute("curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - ")
execute("sudo apt-key fingerprint 0EBFCD88")
#execute("sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu/dists $(lsb_release -cs) stable'")
execute("sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'")
execute("sudo apt-get update")
execute("sudo apt-get install docker-ce")
execute("sudo docker -v")
execute("sudo wget -qO- https://get.docker.com/ | sh")

#execute("sudo apt-get update")
#execute("apt-get -y install docker.io")
#execute("ln -sf /usr/bin/docker.io /usr/local/bin/docker")
#execute("sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker")
#execute("update-rc.d docker.io defaults")
#execute("docker pull Ubuntu")
#execute("docker run -i -t ubuntu /bin/bash")

#execute("sudo apt-get update")
#execute("sudo apt-get install apt-transport-https ca-certificates curl software-properties-common")
#execute("curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -")
#Chef::Log.info("$(lsb_release -cs)")
#execute("sudo wget -qO- https://get.docker.com/ | sh")
#execute("sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'")
#execute("sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu trusty stable'")
#execute("sudo apt-get update –fix-missing")
#execute("sudo apt-get install docker-ce")
