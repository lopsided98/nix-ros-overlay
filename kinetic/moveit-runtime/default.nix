
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-move-group, catkin, moveit-ros-manipulation, moveit-ros-warehouse, moveit-core, moveit-ros-perception, moveit-planners, moveit-ros-planning-interface, moveit-plugins }:
buildRosPackage {
  pname = "ros-kinetic-moveit-runtime";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_runtime/0.9.15-0.tar.gz;
    sha256 = "e2f2a0f7c35d92de10a106d2ecae52baba75bf79bd3032c0cb953797536f0b13";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group moveit-ros-manipulation moveit-ros-warehouse moveit-core moveit-ros-perception moveit-planners moveit-ros-planning-interface moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt! packages that are essential for its runtime (e.g. running MoveIt! on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
