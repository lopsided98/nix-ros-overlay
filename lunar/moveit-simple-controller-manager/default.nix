
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, control-msgs, catkin, moveit-core, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-moveit-simple-controller-manager";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_simple_controller_manager/0.9.12-1.tar.gz;
    sha256 = "f86e8c23f729edb13ad21727cd8d7885f37dee8015f93b20cc092c371141138c";
  };

  buildInputs = [ pluginlib control-msgs moveit-core actionlib roscpp ];
  propagatedBuildInputs = [ pluginlib control-msgs moveit-core actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
