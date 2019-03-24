install_dir = node['qmk']['install_location']
user = node['qmk']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
install_location = ::File.join(user_home, install_dir)

qmk_repo 'download qmk_firmware' do
  github_user node['qmk']['github_user']
  repo_name 'qmk'
  install_dir install_location
  action :create
end

apt_pkgs = node['qmk']['firmware']['ubuntu_pkgs']

apt_pkgs.each do |package|
  apt_package package
end
