
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-rsm-msgs";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_msgs/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "1aafb9e74806761febf38024c26dd9d1b63bb5eebd587164794b156bda81b194";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_msgs package features messages and services for the Robot Statemachine'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
