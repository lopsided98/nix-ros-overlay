
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-bt-navigator";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_bt_navigator/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "056bf8f64d25d81a6d4b0e912aa297b0b1c1d856da707ef716a144f4acfa1a70";
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
