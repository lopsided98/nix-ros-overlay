
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, control-msgs, catkin, moveit-core, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-simple-controller-manager";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_simple_controller_manager/0.9.15-0.tar.gz;
    sha256 = "b04cc54b5eb206396d16cf28978a5fc4ace669ce9d249b8d3f049a62f2f0d9ea";
  };

  buildInputs = [ moveit-core pluginlib actionlib control-msgs roscpp ];
  propagatedBuildInputs = [ moveit-core pluginlib actionlib control-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    #license = lib.licenses.BSD;
  };
}
