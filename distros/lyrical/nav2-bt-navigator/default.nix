
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-bt-navigator";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_bt_navigator/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "914eb4022a3ed1bd87c650c839869aa0baa942d1b2ead5db068967153183eb03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 BT Navigator Server";
    license = with lib.licenses; [ asl20 ];
  };
}
