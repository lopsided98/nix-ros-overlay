
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl-lifecycle, rclcpp, rcpputils, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rclcpp-lifecycle";
  version = "16.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/humble/rclcpp_lifecycle/16.0.4-2.tar.gz";
    name = "16.0.4-2.tar.gz";
    sha256 = "cd424b010894f3d15d5fca5015462a8281e991a5341d84b0578d0bbf9c93414f";
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
