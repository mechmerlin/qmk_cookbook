user_name = node['qmk']['admin_user']
passwd = node['qmk']['admin_passwd']

if platform?('mac_os_x')
  macos_user "create admin user #{user_name}" do
    username user_name
    autologin true
    admin true
    password passwd
    action :create
  end
else
  user user_name do
    manage_home true
    gid 'sudo'
    home "/home/#{user_name}"
    action :create
    password passwd
  end
end
