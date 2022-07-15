
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avahi, catkin, fkie-multimaster-msgs, rosgraph, roslib, rospy, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-discovery";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_discovery/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "ef1f4057d587946bc39846a292e6e279eda7c254edf33a6cf6d0947271db8932";
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
