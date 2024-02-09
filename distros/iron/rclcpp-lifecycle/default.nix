
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl, rcl-interfaces, rcl-lifecycle, rclcpp, rcpputils, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-iron-rclcpp-lifecycle";
  version = "21.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/iron/rclcpp_lifecycle/21.0.5-1.tar.gz";
    name = "21.0.5-1.tar.gz";
    sha256 = "8ecf54ebb36a529ba4bdf88595129ae979636a6b2d616a541f56c4178f378a6d";
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
