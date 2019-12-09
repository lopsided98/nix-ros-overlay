
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avahi, std-srvs, rosgraph, catkin, roslib, pythonPackages, multimaster-msgs-fkie, rospy }:
buildRosPackage {
  pname = "ros-kinetic-master-discovery-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/master_discovery_fkie/0.8.12-0.tar.gz";
    name = "0.8.12-0.tar.gz";
    sha256 = "20159a2bc121683cf292d75f31645ef5a3008b72b6905ac13eb05f29944630e5";
  };

  buildType = "catkin";
  buildInputs = [ multimaster-msgs-fkie std-srvs ];
  propagatedBuildInputs = [ avahi std-srvs rosgraph roslib pythonPackages.avahi multimaster-msgs-fkie rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Discover the running ROS Masters in local network. The 
     discovering is done by sending an echo heartbeat messages to a defined 
     multicast group.
     The alternative is to use a zeroconf/avahi daemon to register the ROS 
     master as service and discover other ROS masters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
