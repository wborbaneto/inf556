# cleaning

fuser -k 6653/tcp
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock
systemctl stop openvswitch-switch.service
systemctl start openvswitch-switch.service


#
apt-get --yes --force-yes install python-pip
pip install webob
pip install tinyrpc==1.0.2
pip install routes
pip install ovs
pip install oslo.config
pip install msgpack
pip install eventlet==0.18.2


# ryu
cd ~/; git clone git://github.com/osrg/ryu.git
cd ryu; python ./setup.py install
