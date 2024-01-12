
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avahi, catkin, fkie-multimaster-msgs, rosgraph, roslib, rospy, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-discovery";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_discovery/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "de46fc8e8fd45b41af42317ce3c5e2f483b5c774549edd31036e4c21904a2866";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
