php_pear "mongo" do
  action :install
end

php_pear "xdebug" do
  # Specify that xdebug.so must be loaded as a zend extension
  zend_extensions ['xdebug.so']
  action :install
end

package "libpcre3-dev" do
  action :install
end

php_pear "apc" do
  action :install
  directives(:shm_size => "128M", :enable_cli => 0)
end

package "php5-intl" do
  action :install
end

package "php5-curl" do
  action :install
end

package "memcached" do
  action :install
end

package "php5-memcached" do
  action :install
end

package "php5-json" do
  action :install
end

package "yui-compressor" do
  action :install
end

npm_package "less"

web_app "site_scrumboard" do
  server_name "scrumboard"
  server_aliases ["scrumboard.jinkies.net"]
  docroot "/vagrant/web"
end