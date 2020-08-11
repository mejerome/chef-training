# To learn more about Custom Resources, see https://docs.chef.io/custom_resources/
resource_name :chefkata
property :kata_repo, String, name_property: true

action :create do
  execute 'ran' do
    command 'echo ran command > /var/website/command.txt'
    not_if { ::File.exist?('/var/website/command.txt') }
  end

  git 'chefkata' do
    destination '/var/website/architect'
    repository new_resource.kata_repo
    action :nothing
    subscribes :sync, 'execute[ran]', :immediately
  end
end
