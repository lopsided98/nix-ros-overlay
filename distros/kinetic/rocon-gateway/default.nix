
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gateway-msgs, pythonPackages, rocon-console, rocon-gateway-utils, rocon-hub-client, rocon-python-comms, rocon-python-redis, rocon-python-utils, rocon-python-wifi, rosgraph, roslib, roslint, rosparam, rospy, rosservice, rostopic, std-srvs, zeroconf-avahi, zeroconf-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-gateway";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "916a1c92cf282b8333b9d92c6919e6bdcc8cb428fb1a1235d436a5d9815fadc8";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ gateway-msgs pythonPackages.pycrypto rocon-console rocon-gateway-utils rocon-hub-client rocon-python-comms rocon-python-redis rocon-python-utils rocon-python-wifi rosgraph roslib rosparam rospy rosservice rostopic std-srvs zeroconf-avahi zeroconf-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A hub acts as a shared key-value store for multiple ros 
    systems (primarily used by gateways).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
