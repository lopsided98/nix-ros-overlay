
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-simple-controller-manager";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_simple_controller_manager/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "2f5e1fccdd0879f69bbb77cb65c8a2dde355c8a37f4437dda2fa753843875329";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib control-msgs moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
