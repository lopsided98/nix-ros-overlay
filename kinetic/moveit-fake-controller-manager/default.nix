
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-fake-controller-manager";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_fake_controller_manager/0.9.15-0.tar.gz;
    sha256 = "0bd68ce45b591ea903d2d318db6a0b564822278a5c10a41dfe70c19cc3443ac8";
  };

  propagatedBuildInputs = [ pluginlib roscpp moveit-core moveit-ros-planning ];
  nativeBuildInputs = [ moveit-ros-planning pluginlib moveit-core catkin roscpp ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    #license = lib.licenses.BSD;
  };
}
