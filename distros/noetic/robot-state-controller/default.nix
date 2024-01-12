
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, kdl-parser, realtime-tools, rm-common, roscpp, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-robot-state-controller";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/robot_state_controller/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "bb060b047844d076275f041ff7b12fb97a174eb01ae3a05472fd6ed4ba271c93";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface kdl-parser realtime-tools rm-common roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
