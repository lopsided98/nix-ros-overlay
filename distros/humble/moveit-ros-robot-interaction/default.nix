
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, interactive-markers, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-moveit-ros-robot-interaction";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_ros_robot_interaction/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "51c690f15b2b0ea9d1623fc3e8c49bdffe348f233abae5e6667717f3f43098a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ interactive-markers moveit-common moveit-core moveit-ros-planning rclcpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
