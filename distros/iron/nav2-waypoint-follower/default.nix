
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, geographic-msgs, image-transport, nav-msgs, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-localization, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-nav2-waypoint-follower";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_waypoint_follower/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "e2422d4370307ee88ea7f70034c6d936990ca6e850cf12f6bc791162fd95ed6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geographic-msgs image-transport nav-msgs nav2-common nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle robot-localization tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A waypoint follower navigation server";
    license = with lib.licenses; [ asl20 ];
  };
}
