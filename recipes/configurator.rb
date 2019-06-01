user = node['qmk']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
install_location = ::File.join user_home, 'Documents'
repository_name = 'qmk_configurator'
qmk_dir = ::File.join install_location, repository_name

directory install_location
directory qmk_dir

qmk_repo "clone #{repository_name} into #{install_location}" do
  github_user node['qmk']['github_user']
  repo_name repository_name
  install_dir qmk_dir
  action :create
end
