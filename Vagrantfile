Vagrant.configure("2") do |config|

  # Managers
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", path: "provision/node.sh", privileged:true
  config.vm.define "m1" do |dsl|
      dsl.vm.hostname = "m1"
      dsl.vm.network "private_network", ip: "192.168.56.2"
      dsl.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 2
      end
  end

  # Workers
  (1..2).each do |num|
    config.vm.define "w#{num}" do |dsl|
       dsl.vm.hostname = "w#{num}"
       dsl.vm.network "private_network", ip: "192.168.56.2#{num}"
       dsl.vm.provider "virtualbox" do |v|
        v.memory = 512
        v.cpus = 2
      end
    end
 end
end
