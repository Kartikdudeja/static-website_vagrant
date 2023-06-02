Vagrant.configure("2") do |config|

  # box/image
  config.vm.box = "geerlingguy/centos7"

  # private IP of the VM
  config.vm.network "private_network", ip: "192.168.20.20"

  # bridge adaptor
  config.vm.network "public_network"

  # sync folder
  config.vm.synced_folder ".", "/vagrant"

  # configuration related to hypervisor (VirtualBox)
  config.vm.provider "virtualbox" do |vb|

    # name of the VM
    vb.name = 'Vagrant_Static_Website'

    # memory
    vb.memory = "1024"

    # cpu
    vb.cpus = "1"

  end

  # provisioning
  config.vm.provision "shell", path: "deploy-static-website.sh"

end