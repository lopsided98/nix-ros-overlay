
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-interfaces, easynav-system, geometry-msgs, nav-msgs, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-easynav-nav2-bridge";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_nav2_bridge-release/archive/release/kilted/easynav_nav2_bridge/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "6ff2306d8c0e17d4c518f0cd776564b3dd6a92c7490174187cac17540b7bebb6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ action-msgs ament-cmake-gtest ament-lint-auto ament-lint-common easynav-common nav-msgs rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-interfaces easynav-system geometry-msgs nav2-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Nav2 bridge exposing a nav2_msgs/action/NavigateToPose action server backed by EasyNav.";
    license = with lib.licenses; [ asl20 ];
  };
}
