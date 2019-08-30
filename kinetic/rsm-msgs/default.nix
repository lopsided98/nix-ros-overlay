
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rsm-msgs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_msgs/1.1.2-1.tar.gz;
    sha256 = "8f31de2a7171f3a81c247eee7ad350d873827bb67fceee8f609d8e4ca747fc6d";
  };

  buildInputs = [ std-msgs message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-msgs roscpp message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_msgs package features messages and services for the Robot Statemachine'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
