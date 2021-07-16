
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-ros-benchmarks, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-visualization, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "d991f0af0b7c480235171c04345b7cac794f1e077f1808c5d52680ef8812ded1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-ros-benchmarks moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-visualization moveit-ros-warehouse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
