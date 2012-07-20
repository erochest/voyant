
include_recipe 'application'
include_recipe 'application_java'

application 'voyant' do
  path  node.voyant.path
  owner node.tomcat.user
  group node.tomcat.group
  repository node.voyant.url

  java_webapp do
    context_template "voyant-context.xml.erb"
  end
end

