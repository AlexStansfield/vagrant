include_recipe "apache2"

web_app "site_devtrends" do
  server_name "devtrends"
  server_aliases ["devtrends.jinkies.net"]
  docroot "/vagrant/web"
end