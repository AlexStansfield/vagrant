include_recipe "php_site_dev"

package "php5-sqlite" do
  action :install
end

web_app "site_gomeeki" do
  server_name "gomeeki"
  server_aliases ["gomeeki.jinkies.net"]
  docroot "/vagrant_data/web"
end