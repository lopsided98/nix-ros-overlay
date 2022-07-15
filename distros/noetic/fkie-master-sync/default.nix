
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fkie-master-discovery, fkie-multimaster-msgs, rosgraph, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-sync";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_sync/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "4cd2b623572d81bae982c363c762e59b9eb27795656fba031bfe5a00df7a8119";
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
