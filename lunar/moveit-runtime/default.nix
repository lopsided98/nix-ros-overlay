
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-move-group, catkin, moveit-ros-manipulation, moveit-ros-warehouse, moveit-core, moveit-ros-perception, moveit-planners, moveit-ros-planning-interface, moveit-plugins }:
buildRosPackage {
  pname = "ros-lunar-moveit-runtime";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_runtime/0.9.12-1.tar.gz;
    sha256 = "ea96d4cbb38a3872f1428190a9c460b4a4f3fb74f008ee93370b43c438835af0";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group moveit-ros-manipulation moveit-ros-warehouse moveit-core moveit-ros-perception moveit-planners moveit-ros-planning-interface moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt! packages that are essential for its runtime (e.g. running MoveIt! on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
