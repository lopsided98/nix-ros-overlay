
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-simple-controller-manager";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_simple_controller_manager/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "17279df23dadd10afe22d00bf93e1991b369f48c9725ad8e1d9210d762cd9304";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
