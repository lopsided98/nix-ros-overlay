
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ncurses, robotis-controller, op3-manager, ros-mpg321-player, std-msgs, catkin, robotis-device, op3-action-module, libyamlcpp, roscpp, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-kinetic-op3-action-editor";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_action_editor/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "e62501e2e21b69fddf5d2a3f0b6e9b63c2a1a71070d846029d81efe0d8d5b1f6";
  };

  buildType = "catkin";
  buildInputs = [ ncurses robotis-controller std-msgs robotis-device op3-action-module libyamlcpp roscpp dynamixel-sdk ];
  propagatedBuildInputs = [ ncurses robotis-controller op3-manager ros-mpg321-player std-msgs robotis-device op3-action-module libyamlcpp roscpp dynamixel-sdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_action_editor package porovides editor tool to make motion.'';
    license = with lib.licenses; [ asl20 ];
  };
}
