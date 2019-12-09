
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-python-comms, rosgraph, gateway-msgs, rocon-console, rocon-python-redis, zeroconf-msgs, roslib, rostopic, rosparam, rocon-gateway-utils, zeroconf-avahi, std-srvs, pythonPackages, catkin, rocon-python-utils, rospy, rocon-python-wifi, roslint, rocon-hub-client, rosservice }:
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
  propagatedBuildInputs = [ rocon-console rocon-python-comms rocon-python-wifi rocon-python-redis std-srvs zeroconf-msgs rosgraph pythonPackages.pycrypto roslib rocon-hub-client rostopic rosparam rocon-python-utils rocon-gateway-utils gateway-msgs rospy rosservice zeroconf-avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A hub acts as a shared key-value store for multiple ros 
    systems (primarily used by gateways).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
