
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-simple-controller-manager";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_simple_controller_manager/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "62d318d64ec3d9a2163fa3843ed855d6f89cb8898abfcff6e2c585a2e6d56ef4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
