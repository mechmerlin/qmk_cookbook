user = 'vagrant'

users_dir = if platform?('mac_os_x')
              '/Users'
            else
              '/home'
            end

qmk_fw_dir = ::File.join(users_dir, user, 'Documents', 'qmk_firmware')

directory qmk_fw_dir do
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
  repository "git://github.com/#{github_user}/qmk_firmware.git"
  reference 'master'
  destination qmk_fw_dir
  action :sync
end

apt_pkgs = node['qmk']['ubuntu_pkgs']

apt_pkgs.each do |package|
  apt_package package
end
