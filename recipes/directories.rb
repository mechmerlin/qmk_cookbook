user = node['qmk']['admin_user']

users_dir = if platform?('mac_os_x')
              '/Users'
            else
              '/home'
            end

directory ::File.join(users_dir, user, 'Documents') do
  owner user
  mode '0755'
  action :create
end
