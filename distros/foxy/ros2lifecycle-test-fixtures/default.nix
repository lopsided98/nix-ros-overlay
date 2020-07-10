
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-ros2lifecycle-test-fixtures";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2lifecycle_test_fixtures/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "48e5d804a7726adcfed6438aa46216aaf06284ba24ef9a4bd5ec5f232a68129a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing fixture nodes for ros2lifecycle tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
