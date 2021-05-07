
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-simple-controller-manager";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_simple_controller_manager/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "338d54d1fc03e3596ac9c88d33ca25015027a9996849220b89f008d92e2d7d6e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
