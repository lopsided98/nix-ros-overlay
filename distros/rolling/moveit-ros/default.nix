
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-benchmarks, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-visualization, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros";
  version = "2.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros/2.13.2-1.tar.gz";
    name = "2.13.2-1.tar.gz";
    sha256 = "834c093a94b7a1f518a358bc2b078928949c7c05990d0225ff1ef6ebb8852104";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-ros-benchmarks moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-visualization moveit-ros-warehouse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Components of MoveIt that use ROS";
    license = with lib.licenses; [ bsd3 ];
  };
}
