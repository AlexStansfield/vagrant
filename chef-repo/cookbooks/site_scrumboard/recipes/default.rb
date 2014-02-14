include_recipe "apache2"

php_pear "mongo" do
  action :install
end

package "php5-intl" do
  action :install
end

package "git" do
  action :install
end

web_app "site_scrumboard" do
  server_name "scrumboard"
  server_aliases ["scrumboard.jinkies.net"]
  docroot "/vagrant/web"
end