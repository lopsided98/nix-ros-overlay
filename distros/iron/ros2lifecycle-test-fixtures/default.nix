
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-ros2lifecycle-test-fixtures";
  version = "0.25.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/iron/ros2lifecycle_test_fixtures/0.25.4-1.tar.gz";
    name = "0.25.4-1.tar.gz";
    sha256 = "76cc49e533b046df75020eba2eb1be618017b91f0078629038ad68b3c8447876";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing fixture nodes for ros2lifecycle tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
