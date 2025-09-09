
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-bt-navigator";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_bt_navigator/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "ab6fb036cda8d8425a2d0eeab70ecf2aea95d3f0cb6d154360eb74201ac55ed5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 BT Navigator Server";
    license = with lib.licenses; [ asl20 ];
  };
}
