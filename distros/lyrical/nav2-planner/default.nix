
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-planner";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_planner/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "5c9d74f0dc028d71cdee192fe88d4469c8f18b34484037b68bf3cd8058cd2e4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros geometry-msgs lifecycle-msgs nav-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-components rclcpp-lifecycle tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 planner server package";
    license = with lib.licenses; [ asl20 ];
  };
}
