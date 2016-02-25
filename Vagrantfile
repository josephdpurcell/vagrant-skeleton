# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-hostmanager")
    raise "vagrant-hostmanager plugin is not installed"
end

# tunables
ip          = '10.33.100.10'
project     = 'vm-project-name'
# end tunables

Vagrant.configure(2) do |config|

    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true

    config.vm.define "#{project}" do |box|
        box.vm.box = "ubuntu/trusty64"
        box.vm.box_version = "20160222.0.0"

        box.vm.provider "vmware_fusion" do |v|
            v.vmx["memsize"] = "1024"
        end

        box.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
        end

        box.vm.hostname = "#{project}.local"
        box.vm.network :private_network, ip: ip

        box.vm.synced_folder ".", "/vagrant", :disabled => true
        box.vm.synced_folder ".", "/var/www/#{project}.local", :nfs => true

        box.ssh.forward_agent = true
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yml"
    end

end
