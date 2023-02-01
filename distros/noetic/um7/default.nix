
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, sensor-msgs, serial }:
buildRosPackage {
  pname = "ros-noetic-um7";
  version = "0.0.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "um7-release";
        rev = "release/noetic/um7/0.0.7-1";
        sha256 = "sha256-YWxUBWOI1Vn2U184XPqCVLb0y4wDmZD1bqxjIKouXbE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um7 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM7.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
