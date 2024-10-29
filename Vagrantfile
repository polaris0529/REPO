Vagrant.configure("2") do |config|
  
    config.vm.define "vm" do |cfg|

      cfg.vm.box = "generic/ubuntu2204" 
      cfg.vm.hostname="ubuntuDemo" 
      cfg.vm.network "private_network", ip:"192.170.100.10"    
      cfg.vm.provision "shell", path: "script.sh"
    
      config.vm.provider "virtualbox" do |vm|
        vm.name = "ubuntuDemo"
        vm.cpus = 2 
        vm.memory = 4096
      end
  end
end
