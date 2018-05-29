Vagrant.configure("2") do |config|
  config.vm.define :wordpress do |w|
    w.vm.box = "ubuntu/trusty64"
    w.vm.hostname = 'wordpress.fac.com.br'
    w.vm.network "private_network", ip: "172.17.177.40"
    w.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all"]
      v.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "wordpress.fac.com.br"]
    end
  end

  config.vm.define :mysql do |m|
    m.vm.box = "ubuntu/trusty64"
    m.vm.hostname = 'mysqlp.fac.com.br'
    m.vm.network "private_network", ip: "172.17.177.42"
    m.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all"]
      v.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "mysql.fac.com.br"]
    end
  end

end
