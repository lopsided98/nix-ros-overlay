
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geographic-msgs, geometry-msgs, image-transport, nav-msgs, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, robot-localization, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-waypoint-follower";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_waypoint_follower/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "97826f366f533bbc23498250996341ce9dc80d5afc2149017211ce83c4851187";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geographic-msgs geometry-msgs image-transport nav-msgs nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle robot-localization sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A waypoint follower navigation server";
    license = with lib.licenses; [ asl20 ];
  };
}
