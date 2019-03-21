
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multimaster-msgs-fkie, rosgraph, rospy, master-discovery-fkie, roslib }:
buildRosPackage {
  pname = "ros-melodic-master-sync-fkie";
  version = "0.8.10";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/master_sync_fkie/0.8.10-0.tar.gz;
    sha256 = "4b3b2e87577c4ef67a8e479f9c71dd2352320e3559fa054cff279e245418299c";
  };

  propagatedBuildInputs = [ roslib rosgraph rospy master-discovery-fkie multimaster-msgs-fkie ];
  nativeBuildInputs = [ master-discovery-fkie catkin multimaster-msgs-fkie ];

  meta = {
    description = ''Synchronize the local ROS master to the remote masters 
     discovered by master_discovery_fkie node. The registration
     of topics and services is only perform by local ROS master.'';
    #license = lib.licenses.BSD;
  };
}
