
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, nav-msgs, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-nav2-waypoint-follower";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_waypoint_follower/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "ed5ac03b406b8a45e501ee909266e72b325c5c1aaf11175c8e8f3480b0783089";
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
