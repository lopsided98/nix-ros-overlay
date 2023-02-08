
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multimaster-msgs-fkie, roslaunch, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-default-cfg-fkie";
  version = "0.8.12";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fkie-release";
        repo = "multimaster_fkie-release";
        rev = "release/melodic/default_cfg_fkie/0.8.12-0";
        sha256 = "sha256-gRaIRm7RCXbyZStSwysITFoKMpz768bwtt4icmsvivE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ multimaster-msgs-fkie roslaunch roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The configuration node loads a given launch configuration and offers services to 
     list or start the contained nodes. It provides additional description 
     extracted from launch file. This is used by node_manager_fkie.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
