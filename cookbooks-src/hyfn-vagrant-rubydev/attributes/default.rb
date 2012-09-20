node['mysql']['server_root_password'] = ""

node['rbenv']['user_installs'] = [{ 
  'user'    => 'vagrant',
  'rubies'  => ['1.9.3-p194'],
  'global'  => '1.9.3-p194',
  'gems'    => {
    '1.9.3-p194' => [
      { 'name'    => 'bundler' },
      { 'name'    => 'rake' },
      { 'name'    => "capistrano"},
      { 'name'    => "pry"},
      { 'name'    => "sass"},
      { 'name'    => "compass"},
      { 'name'    => "rails"},
      { 'name'    => "awesome_print"},
      { 'name'    => "mysql2"},
      { 'name'    => "sqlite3"},
      { 'name'    => "pg"},
      { 'name'    => "dalli"},
    ],
  }
}]