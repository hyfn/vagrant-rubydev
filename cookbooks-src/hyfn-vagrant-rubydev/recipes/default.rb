include_recipe 'apt'
include_recipe 'git'
include_recipe 'build-essential'
include_recipe 'sqlite'
include_recipe 'mysql::client'
include_recipe 'mysql::server'
include_recipe 'postgresql::client'
include_recipe 'postgresql::server'
include_recipe 'nodejs::npm'

# include_recipe 'redis'
include_recipe 'memcached'
include_recipe 'imagemagick::default'
require_recipe 'ruby_build'
require_recipe 'rbenv::user'

execute "update_path" do
  command %q{echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bash_profile && echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bash_profile}
  not_if "grep .rbenv /home/vagrant/.bash_profile"
  action :run
end
