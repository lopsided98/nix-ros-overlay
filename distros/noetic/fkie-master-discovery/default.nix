
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avahi, catkin, fkie-multimaster-msgs, rosgraph, roslib, rospy, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-discovery";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_discovery/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "725ad01e245af4dd6442494090a14f580c357a450a84ccf52a59fc8c8aeda1ee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avahi fkie-multimaster-msgs rosgraph roslib rospy std-srvs ];
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
