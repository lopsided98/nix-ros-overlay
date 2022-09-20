
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, kdl-parser, realtime-tools, rm-common, roscpp, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-robot-state-controller";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/robot_state_controller/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "402219993ee32c1a0d3b283b78d6a6bb296c055c8ede05a5126cbc464b21cabe";
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
