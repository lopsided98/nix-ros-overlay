
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-planner";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_planner/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "35361647022796fc2492ce3aa1e1a4cd4848e6c39d18d2a39d161dfa30a84250";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-components rclcpp-lifecycle tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 planner server package";
    license = with lib.licenses; [ asl20 ];
  };
}
