
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, master-discovery-fkie, multimaster-msgs-fkie, rosgraph, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-master-sync-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/master_sync_fkie/0.8.12-0.tar.gz";
    name = "0.8.12-0.tar.gz";
    sha256 = "14b81d9024f42cd1ad4eb7e35af79cdddc3682c38bbc867fea109156368b4814";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ master-discovery-fkie multimaster-msgs-fkie rosgraph roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronize the local ROS master to the remote masters 
     discovered by master_discovery_fkie node. The registration
     of topics and services is only perform by local ROS master.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
