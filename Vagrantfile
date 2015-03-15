# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.host_name = "tetra-spark-training"
  config.vm.provider :virtualbox do |vb|
      vb.name = "tetra-spark-training"
  end

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "kevin-faro/tetra-spark"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://atlas.hashicorp.com/kevin-faro/boxes/tetra-spark/versions/0.0.1/providers/virtualbox.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 8080, host: 3456
  config.vm.network :forwarded_port, guest: 8081, host: 4567
  config.vm.network :forwarded_port, guest: 50070, host: 56770
  config.vm.network :forwarded_port, guest: 50075, host: 56775
  config.vm.network :forwarded_port, guest: 4040, host: 4040

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "./shared", "/shared"

end
