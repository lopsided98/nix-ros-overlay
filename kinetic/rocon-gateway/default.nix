
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosservice, rocon-console, rosgraph, rospy, zeroconf-avahi, rocon-hub-client, roslint, rocon-gateway-utils, rocon-python-redis, pythonPackages, rocon-python-utils, roslib, std-srvs, rocon-python-comms, catkin, gateway-msgs, rocon-python-wifi, zeroconf-msgs, rosparam, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-rocon-gateway";
  version = "0.8.1-r2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway/0.8.1-2.tar.gz;
    sha256 = "916a1c92cf282b8333b9d92c6919e6bdcc8cb428fb1a1235d436a5d9815fadc8";
  };

  buildInputs = [ roslint ];
  propagatedBuildInputs = [ std-srvs rocon-gateway-utils zeroconf-msgs rocon-python-redis rosparam gateway-msgs rocon-python-comms rosservice pythonPackages.pycrypto rocon-console roslib rosgraph rostopic rospy zeroconf-avahi rocon-python-utils rocon-python-wifi rocon-hub-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A hub acts as a shared key-value store for multiple ros 
    systems (primarily used by gateways).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
