
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl-lifecycle, rclcpp, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclcpp-lifecycle";
  version = "9.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/galactic/rclcpp_lifecycle/9.2.1-1.tar.gz";
    name = "9.2.1-1.tar.gz";
    sha256 = "9d44cdda3d6977744cb050688211067064bcc2c526c09523c64d583da10cd143";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rcutils test-msgs ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclcpp rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
