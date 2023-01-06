
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl-lifecycle, rclcpp, rcpputils, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rclcpp-lifecycle";
  version = "16.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/humble/rclcpp_lifecycle/16.0.2-1.tar.gz";
    name = "16.0.2-1.tar.gz";
    sha256 = "59b9b0ee7b3620d8f7bdc1506418a4c002ea48b6b1b5552853d373715b23702b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rcpputils rcutils test-msgs ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclcpp rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
