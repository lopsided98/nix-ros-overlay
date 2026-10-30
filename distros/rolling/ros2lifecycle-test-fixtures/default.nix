
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-ros2lifecycle-test-fixtures";
  version = "0.42.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2lifecycle_test_fixtures/0.42.1-1.tar.gz";
    name = "0.42.1-1.tar.gz";
    sha256 = "5fad4944581c746b9fa36fa8cd91d3899d254b877324ab5d62f2a992ee4e1d1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Package containing fixture nodes for ros2lifecycle tests";
    license = with lib.licenses; [ asl20 ];
  };
}
