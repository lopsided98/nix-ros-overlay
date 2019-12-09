
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, moveit-ros-warehouse, moveit-ros-move-group, moveit-ros-planning-interface, catkin, moveit-ros-manipulation, moveit-planners, moveit-ros-perception, moveit-ros-planning, moveit-plugins }:
buildRosPackage {
  pname = "ros-melodic-moveit-runtime";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_runtime/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "316540c39d80e5428634877875126cd10290f49cfaa7099b8a316e7f688fbc67";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core moveit-ros-warehouse moveit-ros-move-group moveit-ros-planning-interface moveit-ros-manipulation moveit-planners moveit-ros-perception moveit-ros-planning moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt! packages that are essential for its runtime (e.g. running MoveIt! on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
