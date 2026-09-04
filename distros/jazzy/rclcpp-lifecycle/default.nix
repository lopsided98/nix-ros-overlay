
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl, rcl-interfaces, rcl-lifecycle, rclcpp, rcpputils, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclcpp-lifecycle";
  version = "28.1.22-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/jazzy/rclcpp_lifecycle/28.1.22-1.tar.gz";
    name = "28.1.22-1.tar.gz";
    sha256 = "b64c96c2dadae732bbb2a77f791e2d8ee09ef15abd8809e2b3e0bc81b2bd6a9b";
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
