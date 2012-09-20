# require_recipe 'apt'
# require_recipe 'git'
# require_recipe 'build-essential'
# require_recipe 'ruby_build'
# require_recipe 'rbenv::user'

execute "update_path" do
  command %q{echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && echo 'eval "$(rbenv init -)"' >> ~/.bash_profile}
  not_if "grep .rbenv ~/.bash_profile"
  action :run
end
