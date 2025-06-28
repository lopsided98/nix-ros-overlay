
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, test-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-behavior-tree";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_behavior_tree/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0ceaa05fa05c6d38d842686b1161639b6528ba4d498efe1902f80181b7b3df3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common lifecycle-msgs test-msgs ];
  propagatedBuildInputs = [ action-msgs behaviortree-cpp geometry-msgs nav-msgs nav2-common nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 behavior tree wrappers, nodes, and utilities";
    license = with lib.licenses; [ asl20 ];
  };
}
