user = node['qmk']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
install_location = ::File.join user_home, 'Documents'
qmk_dir = ::File.join install_location, 'qmk_firmware'

directory install_location
directory qmk_dir

qmk_repo "clone qmk_firmware into #{install_location}" do
  github_user node['qmk']['github_user']
  repo_name 'qmk_firmware'
  install_dir qmk_dir
  action :create
end
