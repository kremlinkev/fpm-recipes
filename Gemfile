source 'https://rubygems.org'

gem 'rake', '< 12'

group :deployment do
  gem 'httparty'
  gem 'dpkg-deb'
end

group :production do
  gem 'xmlrpc'
  gem 'fpm-cookery',
      :git    => 'https://github.com/bernd/fpm-cookery.git',
      :branch => 'master'
end
