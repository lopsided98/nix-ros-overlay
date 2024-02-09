
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl, rcl-interfaces, rcl-lifecycle, rclcpp, rcpputils, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-lifecycle";
  version = "27.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp_lifecycle/27.0.0-1.tar.gz";
    name = "27.0.0-1.tar.gz";
    sha256 = "89c343cb0979f161aaaec846ee3e32c0aa0bd3393bf3d63de53e7b3626537208";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rcpputils test-msgs ];
  propagatedBuildInputs = [ lifecycle-msgs rcl rcl-interfaces rcl-lifecycle rclcpp rcutils rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
