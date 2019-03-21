
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, op3-manager, op3-action-module, libyamlcpp, catkin, robotis-controller, ncurses, std-msgs, robotis-device, roscpp, ros-mpg321-player }:
buildRosPackage {
  pname = "ros-kinetic-op3-action-editor";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_action_editor/0.2.2-0.tar.gz;
    sha256 = "e62501e2e21b69fddf5d2a3f0b6e9b63c2a1a71070d846029d81efe0d8d5b1f6";
  };

  propagatedBuildInputs = [ dynamixel-sdk op3-manager op3-action-module libyamlcpp robotis-controller ncurses std-msgs robotis-device roscpp ros-mpg321-player ];
  nativeBuildInputs = [ dynamixel-sdk op3-action-module libyamlcpp catkin robotis-controller ncurses std-msgs robotis-device roscpp ];

  meta = {
    description = ''The op3_action_editor package porovides editor tool to make motion.'';
    #license = lib.licenses.Apache 2.0;
  };
}
