user = node['qmk']['admin_user']

users_dir = if platform?('mac_os_x')
              '/Users'
            else
              '/home'
            end

directory ::File.join(users_dir, user, 'Documents', 'qmk_firmware')

dest = ::File.join(users_dir, user, 'Documents/qmk_firmware')

github_user = if node['qmk']['github_user'].empty?
                'qmk'
              else
                node['qmk']['github_user']
              end

git 'clone qmk_firmware fork from github' do
  repository "git://github.com/#{github_user}/qmk_firmware.git"
  reference 'master'
  destination dest
  action :checkout
end

execute 'install dependencies' do
  cwd ::File.join(dest, 'util')
  command './qmk_install.sh'
end
