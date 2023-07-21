
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-ros2lifecycle-test-fixtures";
  version = "0.18.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2lifecycle_test_fixtures/0.18.6-2.tar.gz";
    name = "0.18.6-2.tar.gz";
    sha256 = "9d0f397f093b53101ccbebb706347ec9dcd833b76e081651747d7007ca207c6e";
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
