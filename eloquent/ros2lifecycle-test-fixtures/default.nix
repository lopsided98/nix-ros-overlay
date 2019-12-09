
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-lifecycle, ament-lint-common, ament-cmake, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-ros2lifecycle-test-fixtures";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2lifecycle_test_fixtures/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "e9bcd60d3a52991d3b3291b52e2557a1b6cd782071f429d83227dd2e8ce871a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle rclcpp ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing fixture nodes for ros2lifecycle tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
