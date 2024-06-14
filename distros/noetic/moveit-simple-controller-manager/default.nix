
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-simple-controller-manager";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_simple_controller_manager/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "53b5d1ffc5182a77e11a14f620c2d56dc13cc237703fff2e8cd6954ff262f504";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib control-msgs moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A generic, simple controller manager plugin for MoveIt.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
