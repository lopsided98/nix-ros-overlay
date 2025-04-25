
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, geographic-msgs, image-transport, nav-msgs, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-localization, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-waypoint-follower";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_waypoint_follower/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "4617a39da5f6bd884b94e397ded2e250f4c160ac93e2e3d5f801ebc0affd3cbc";
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
