Vagrant.configure("2") do |config|
  config.vm.box = "wesmcclure/ubuntu1404-docker"
  (1..2).each do |num|
      config.vm.define "docker-swarm-learning-server#{num}" do |dsl|
         dsl.vm.hostname = "dsl-server#{num}"
         dsl.vm.network "private_network", ip: "192.168.56.2#{num}"
      end
   end
end
