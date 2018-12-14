Vagrant.configure("2") do |config|
  config.vm.box = "wesmcclure/ubuntu1404-docker"
  config.vm.define "docker-swarm-learning-server" do |dsl|
    dsl.vm.hostname = "dsl-server"
    dsl.vm.network "private_network", ip: "192.168.56.2"
  end
end
