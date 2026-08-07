
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-behaviors";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_behaviors/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "b3f3f406bcd98a146281aca4cf6505daa891135e0ff0f5964a1cbcf6abb3e893";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common rclcpp-action ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-components rclcpp-lifecycle std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 behavior server";
    license = with lib.licenses; [ asl20 ];
  };
}
