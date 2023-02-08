
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, controller-manager-msgs, log4cxx, message-generation, message-runtime, pluginlib, ros-control, roscpp, smacc-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-smacc";
  version = "0.9.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "robosoft-ai";
        repo = "smacc-release";
        rev = "release/noetic/smacc/0.9.7-1";
        sha256 = "sha256-06jpVa+V/B0PCTSPOqiEyqIVfYymIjMZqp/Tcvo08s0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs controller-manager-msgs log4cxx message-runtime pluginlib ros-control roscpp smacc-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SMACC is a ROS/C++ library to implement in easy and systematic way UML StateCharts (AKA state machines). SMACC is inspired by the SMACH ROS package and it is built on top of Boost StateChart library. Developed by Reel Robotics.'';
    license = with lib.licenses; [ mit ];
  };
}
