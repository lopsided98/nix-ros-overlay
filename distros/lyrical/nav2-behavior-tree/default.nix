
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, behaviortree-cpp, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, rclcpp, rclcpp-action, sensor-msgs, std-msgs, std-srvs, test-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-behavior-tree";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_behavior_tree/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "c675ef9aa8203902a73f6833bebc53dd5a055f826ce500b287da578b68705987";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common lifecycle-msgs test-msgs ];
  propagatedBuildInputs = [ action-msgs backward-ros behaviortree-cpp geometry-msgs nav-msgs nav2-msgs nav2-ros-common nav2-util rclcpp rclcpp-action sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 behavior tree wrappers, nodes, and utilities";
    license = with lib.licenses; [ asl20 ];
  };
}
