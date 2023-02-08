
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-rx-service-tools";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nobleo";
        repo = "rx_service_tools-release";
        rev = "release/noetic/rx_service_tools/1.0.2-1";
        sha256 = "sha256-AvI2p13mSrM75a59AikYEVByVELPM0c/8c+BncqC460=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pyyaml pythonPackages.wxPython roslib rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Graphical tools to interact with ROS services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
