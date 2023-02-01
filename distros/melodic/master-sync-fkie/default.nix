
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, master-discovery-fkie, multimaster-msgs-fkie, rosgraph, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-master-sync-fkie";
  version = "0.8.12";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fkie-release";
        repo = "multimaster_fkie-release";
        rev = "release/melodic/master_sync_fkie/0.8.12-0";
        sha256 = "sha256-BBoxMgsoejYitsKn90XvVswe32GFZak+wujwY7Lapc0=";
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
