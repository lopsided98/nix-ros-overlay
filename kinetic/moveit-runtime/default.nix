
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, moveit-ros-warehouse, moveit-ros-move-group, moveit-ros-planning-interface, catkin, moveit-ros-manipulation, moveit-planners, moveit-ros-perception, moveit-ros-planning, moveit-plugins }:
buildRosPackage {
  pname = "ros-kinetic-moveit-runtime";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_runtime/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "6004e647a10993c09e522a008bbfd44f9957b3c4d89ce7553d512599cb0fe9a1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core moveit-ros-warehouse moveit-ros-move-group moveit-ros-planning-interface moveit-ros-manipulation moveit-planners moveit-ros-perception moveit-ros-planning moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt! packages that are essential for its runtime (e.g. running MoveIt! on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
