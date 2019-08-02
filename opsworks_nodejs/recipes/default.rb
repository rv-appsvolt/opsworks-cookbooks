# Remove installed version, if it's not the one that should be installed.
# We only support one user space nodejs installation

PACKAGE_BASENAME = "opsworks-nodejs"
LECAGY_PACKAGES = []

pm_helper = OpsWorks::PackageManagerHelper.new(node)
current_package_info = pm_helper.summary(PACKAGE_BASENAME)

Chef::Log.info("Userspace jp APT_GET UPDATE")
execute "apt-get update"
Chef::Log.info("Userspace jp APT_GET UPDATE")
package "nodejs"
package "npm"
package "nodejs-legacy"

Chef::Log.info("Ready to install")
execute "npm install express -g"
