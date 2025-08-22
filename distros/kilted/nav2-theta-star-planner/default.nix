
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-theta-star-planner";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_theta_star_planner/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "dcaa997029274f9522431d61c10273ee872b9f8c19beee124401bf1c3f357677";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rcl-interfaces rclcpp rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Theta* Global Planning Plugin";
    license = with lib.licenses; [ asl20 ];
  };
}
