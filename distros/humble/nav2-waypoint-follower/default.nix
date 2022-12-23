
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, nav-msgs, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nav2-waypoint-follower";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_waypoint_follower/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "9d183117e5c297e83f71b5251d78636f13a5f7bb3c47c79cb0a5b878a44fe265";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport nav-msgs nav2-common nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A waypoint follower navigation server'';
    license = with lib.licenses; [ asl20 ];
  };
}
