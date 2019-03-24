
install_dir = node['qmk']['install_location']
user = node['qmk']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
install_location = ::File.join(user_home, install_dir)
qmk_conf_dir = ::File.join(install_location, 'qmk_configurator')

directory ::File.join(install_location) do
  owner user
  mode '0755'
  action :create
end

directory qmk_conf_dir do
  owner user
  mode '0755'
  action :create
end

github_user = if node['qmk']['github_user'].empty?
                'qmk'
              else
                node['qmk']['github_user']
              end

git 'clone qmk_firmware fork from github' do
  repository "git://github.com/#{github_user}/qmk_configurator.git"
  reference 'master'
  destination qmk_conf_dir
  action :sync
end
