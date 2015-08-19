# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |c|

  c.vm.box = "osx1010-desktop-nocm-1.0.1"
  c.vm.hostname = "osx1010"
  c.vm.synced_folder ".", "/vagrant", disabled: true

  c.vm.provider :vmware_fusion do |p|
    p.vmx["memsize"] = "2048"
    p.vmx["numvcpus"] = "2"
    p.gui = false
  end

  c.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    #ansible.verbose = 'vvv'
  end
  
end

