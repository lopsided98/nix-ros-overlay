
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, control-msgs, catkin, moveit-core, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-simple-controller-manager";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_simple_controller_manager/1.0.1-0.tar.gz;
    sha256 = "911f5903df3144ae4ae248752b196acb700a83536c1662fd4b0005badf1d7eee";
  };

  buildInputs = [ pluginlib control-msgs moveit-core actionlib roscpp ];
  propagatedBuildInputs = [ pluginlib control-msgs moveit-core actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
