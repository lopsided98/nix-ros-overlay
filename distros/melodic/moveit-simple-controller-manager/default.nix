
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-simple-controller-manager";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_simple_controller_manager/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "ad2ec0bfb1a46c154f023ffc6076c7013f4ce0a8b61e101b66fcbec05d079db7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
