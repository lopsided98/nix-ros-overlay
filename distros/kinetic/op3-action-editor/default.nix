
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, libyamlcpp, ncurses, op3-action-module, op3-manager, robotis-controller, robotis-device, ros-mpg321-player, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-action-editor";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_action_editor/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "e62501e2e21b69fddf5d2a3f0b6e9b63c2a1a71070d846029d81efe0d8d5b1f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamixel-sdk libyamlcpp ncurses op3-action-module op3-manager robotis-controller robotis-device ros-mpg321-player roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_action_editor package porovides editor tool to make motion.'';
    license = with lib.licenses; [ asl20 ];
  };
}
