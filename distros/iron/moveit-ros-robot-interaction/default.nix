
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, interactive-markers, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-moveit-ros-robot-interaction";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_ros_robot_interaction/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "83e6921c01a46f81100f9b43030d251c89bc7be51732eda1f197919f8d5b4ffa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ interactive-markers moveit-common moveit-core moveit-ros-planning rclcpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsd3 ];
  };
}
