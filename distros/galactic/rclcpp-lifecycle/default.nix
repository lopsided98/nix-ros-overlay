
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl-lifecycle, rclcpp, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclcpp-lifecycle";
  version = "9.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/galactic/rclcpp_lifecycle/9.1.0-1.tar.gz";
    name = "9.1.0-1.tar.gz";
    sha256 = "9d72d352dbaf2df1a7992422f603ca31f30828db492fe961ae1a82932449ba6f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rcutils test-msgs ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclcpp rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
