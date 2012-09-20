# # run all the recipes
#  # recipes.map { |recipe| chef.add_recipe(recipe) }
#  
#  
#  
#  # GEMS - eventually
#  # bundler capistrano rails pry sass compass therubyracer 
#  # awesome_print sinatra mysql2 sqlite pg dalli
#  
#  # configuration for recipes
#  chef.json = { 
#    :mysql => {
#      :server_root_password => "",
#    },
#    :rbenv => {
#      :user_installs => [{
#        :user => 'vagrant',
#        :rubies => [ruby_version],
#        :global => ruby_version,
#        :gems => {
#          ruby_version => [
#            {:name => "bundler"},
#            {:name => "capistrano"},
#            {:name => "pry"},
#            {:name => "sass"},
#            {:name => "compass"},
#          ],
#        },
#      }],
#    },
#  }

node['mysql']['server_root_password'] = ""

node['rbenv']['user_installs'] = [
  { 'user'    => 'vagrant',
    'rubies'  => ['1.9.3-p194'],
    'global'  => '1.9.3-p194',
    'gems'    => {
      '1.9.3-p194'    => [
        { 'name'    => 'bundler' },
        { 'name'    => 'rake' },
        { 'name'    => "capistrano"},
        { 'name'    => "pry"},
        { 'name'    => "sass"},
        { 'name'    => "compass"},
      ],
    }
  }
]