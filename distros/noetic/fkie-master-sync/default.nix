
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fkie-master-discovery, fkie-multimaster-msgs, rosgraph, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-sync";
  version = "1.2.6-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_sync/1.2.6-2.tar.gz";
    name = "1.2.6-2.tar.gz";
    sha256 = "03889c2c4d499116a429d4cdad1701b7900fab9a5cbc1e15f83e2dbefc029201";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fkie-master-discovery fkie-multimaster-msgs rosgraph roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronize the local ROS master to the remote masters 
     discovered by fkie_master_discovery node. The registration
     of topics and services is only perform by local ROS master.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
