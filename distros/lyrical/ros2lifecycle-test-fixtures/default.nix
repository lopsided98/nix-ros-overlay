
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-ros2lifecycle-test-fixtures";
  version = "0.40.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/lyrical/ros2lifecycle_test_fixtures/0.40.7-1.tar.gz";
    name = "0.40.7-1.tar.gz";
    sha256 = "ea368b8d6bce6570d2a16f78c182d270d0f207ae979b847cd45ea91a3beeafe5";
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
