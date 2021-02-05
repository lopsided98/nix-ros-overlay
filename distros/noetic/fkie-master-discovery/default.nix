
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avahi, catkin, fkie-multimaster-msgs, rosgraph, roslib, rospy, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-discovery";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_discovery/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "203483ec58feb471f5a9561b0cd1dd8d3baf7f3d123a8a026455bef1053e9991";
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
