
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcl, rcl-action, rclcpp, rcpputils, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rclcpp-action";
  version = "32.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/lyrical/rclcpp_action/32.0.3-1.tar.gz";
    name = "32.0.3-1.tar.gz";
    sha256 = "c53f06bb0cb4ee6446f1e5947cce8e6ef10d17bacb48014fc0ef19a0bc286c28";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcl-action rclcpp rcpputils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Adds action APIs for C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
