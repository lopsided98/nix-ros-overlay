
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, master-discovery-fkie, multimaster-msgs-fkie, rosgraph, roslib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-master-sync-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/master_sync_fkie/0.8.12-0.tar.gz";
    name = "0.8.12-0.tar.gz";
    sha256 = "84a7438f9036320953a9eb18506c71b077ae85f977715dc14a90d393b82e8485";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ master-discovery-fkie multimaster-msgs-fkie rosgraph roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronize the local ROS master to the remote masters 
     discovered by master_discovery_fkie node. The registration
     of topics and services is only perform by local ROS master.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
