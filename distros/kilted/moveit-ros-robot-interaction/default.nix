
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, interactive-markers, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-moveit-ros-robot-interaction";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_ros_robot_interaction/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "68f353bee6a8c0cf227ee0fc5787e91a0b2209d8e79e2c0b21950338d1bda290";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ interactive-markers moveit-common moveit-core moveit-ros-planning rclcpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Components of MoveIt that offer interaction via interactive markers";
    license = with lib.licenses; [ bsd3 ];
  };
}
