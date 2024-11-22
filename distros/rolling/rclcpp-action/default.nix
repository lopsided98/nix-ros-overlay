
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcl, rcl-action, rclcpp, rcpputils, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-action";
  version = "29.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp_action/29.1.0-1.tar.gz";
    name = "29.1.0-1.tar.gz";
    sha256 = "c256ed692264be83aff88ef7b55ce51911ab840f9ed750fe5e5afb1e5f1936d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-cmake rcl rcl-action rclcpp rcpputils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Adds action APIs for C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
