
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fkie-master-discovery, fkie-multimaster-msgs, rosgraph, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-sync";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_sync/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "0986d615fc344af3fa7fbf4107ee5c1809f647c82754cae34cdcea4e53d07933";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fkie-master-discovery fkie-multimaster-msgs rosgraph roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronize the local ROS master to the remote masters 
     discovered by fkie_master_discovery node. The registration
     of topics and services is only perform by local ROS master.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
