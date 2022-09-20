
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-fake-controller-manager";
  version = "1.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_fake_controller_manager/1.1.10-1.tar.gz";
    name = "1.1.10-1.tar.gz";
    sha256 = "a056f10f4e9e64ed601c2880d49a9bfbd46818fdadb4021295d7c4c6569e1ea3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
