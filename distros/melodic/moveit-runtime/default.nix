
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-planners, moveit-plugins, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-melodic-moveit-runtime";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_runtime/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "e56ccc3ce00a4bc5b0c5e6cec07c0050fde1e5cd41d27a1c5e5b2438d20309b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros-manipulation moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-warehouse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt! packages that are essential for its runtime (e.g. running MoveIt! on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
