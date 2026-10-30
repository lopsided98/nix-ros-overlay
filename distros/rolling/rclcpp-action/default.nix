
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gtest, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcl, rcl-action, rclcpp, rcpputils, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-action";
  version = "33.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp_action/33.2.0-2.tar.gz";
    name = "33.2.0-2.tar.gz";
    sha256 = "2d3e9f5a53e2186d805aafc6aee501ad2d41ce7ec4cbc6240d076788f6cfc9e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcl-action rclcpp rcpputils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Adds action APIs for C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
