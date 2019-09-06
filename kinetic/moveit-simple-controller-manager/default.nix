
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, control-msgs, catkin, moveit-core, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-simple-controller-manager";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_simple_controller_manager/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "f4a601efcc8e991e468324a46fc3ad702f95052f4cf01e64b077130b9c3cdee8";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib control-msgs moveit-core actionlib roscpp ];
  propagatedBuildInputs = [ pluginlib control-msgs moveit-core actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
