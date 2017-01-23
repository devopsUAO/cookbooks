include_recipe 'apt::default'

app = search(:aws_opsworks_app).first
app_path = "/srv/#{app['shortname']}"

application app_path do
  environment.update(app['environment'])

  git app_path do
    repository app['app_source']['url']
    revision app['app_source']['revision']
    deploy_key app['app_source']['ssh_key']
  end

  web_app app['shortname'] do
    template 'web_app.conf.erb'
    server_name app['domains'].first
    server_aliases app['domains'].drop(1)
    docroot app_path
  end
end

# Installing some required packages
include_recipe 'php::default'
include_recipe 'apache::mod_php5'
include_recipe 'php::module_mysql'