
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, cv-bridge, geographic-msgs, geometry-msgs, image-transport, nav-msgs, nav2-common, nav2-core, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, robot-localization, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-waypoint-follower";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_waypoint_follower/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "126c7c3ca5a40ebb2a72f99752253137f8440c60d5862d149b1f6183d3dd1a42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros cv-bridge geographic-msgs geometry-msgs image-transport nav-msgs nav2-core nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle robot-localization sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A waypoint follower navigation server";
    license = with lib.licenses; [ asl20 ];
  };
}
