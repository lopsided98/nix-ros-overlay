
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-benchmarks, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-visualization, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-lyrical-moveit-ros";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_ros/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "80c14bb0df3713d94ec557fb6bc545c304b9f14f2b5f2e678805e00b6d7d8a00";
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
