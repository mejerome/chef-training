# chef-training

first install chef-workstation
logged into manage.chef.io to access chef-server instance
create a new organisation

got stuck because chef server install and kitchen reported a similar error dpkg: error processing archive /tmp/omnibus/cache/chef_16.3.45-1_amd64.deb (--install):

checksum fails in centos so I downloaded and passed the file into ~/.kitchen/cache/

policy file is required for runlist

