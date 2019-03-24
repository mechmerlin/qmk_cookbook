resource_name :qmk_repo
default_action :create

property :repo_name, String
property :github_user, String
property :install_dir, String

action_class do
  def repo_name
    new_resource.property_is_set?(:repo_name) ? new_resource.repo_name : ''
  end

  def github_user
    new_resource.property_is_set?(:github_user) ? new_resource.github_user : 'qmk'
  end

  def install_dir
    new_resource.property_is_set?(:install_dir) ? new_resource.install_dir : 'Documents'
  end
end

action :create do
  directory ::File.join(install_dir)
  directory ::File.join(install_dir, repo_name)

  git "clone #{repo_name} fork from github" do
    repository "git://github.com/#{github_user}/#{repo_name}.git"
    reference 'master'
    destination install_dir
    action :sync
  end
end
