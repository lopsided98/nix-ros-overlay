
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl, rcl-interfaces, rcl-lifecycle, rclcpp, rcpputils, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclcpp-lifecycle";
  version = "28.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/jazzy/rclcpp_lifecycle/28.1.10-1.tar.gz";
    name = "28.1.10-1.tar.gz";
    sha256 = "f0bad91a3ed7202d4c7b365eedce1de5da54647005e10137328ad122bd749f21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rcpputils test-msgs ];
  propagatedBuildInputs = [ lifecycle-msgs rcl rcl-interfaces rcl-lifecycle rclcpp rcutils rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Package containing a prototype for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
