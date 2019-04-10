
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-core, actionlib, eigen }:
buildRosPackage {
  pname = "ros-lunar-moveit-kinematics";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_kinematics/0.9.12-1.tar.gz;
    sha256 = "055abd4bf0e124612a6556010f3fe572cbbb1e16a5d2e7bd7a47a0bed0309aa2";
  };

  buildInputs = [ moveit-ros-planning moveit-core pluginlib actionlib eigen ];
  propagatedBuildInputs = [ moveit-ros-planning pluginlib moveit-core actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
