install_dir = node['qmk']['install_location']
user = node['qmk']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
install_location = ::File.join(user_home, install_dir)

directory ::File.join(install_location) do
  owner user
  mode '0755'
  action :create
end
