
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-ros2lifecycle-test-fixtures";
  version = "0.32.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2lifecycle_test_fixtures/0.32.10-1.tar.gz";
    name = "0.32.10-1.tar.gz";
    sha256 = "8a26daacc21e3658aa630204e783195dc8681fa9505f718483e492baf7ded69d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing fixture nodes for ros2lifecycle tests";
    license = with lib.licenses; [ asl20 ];
  };
}
