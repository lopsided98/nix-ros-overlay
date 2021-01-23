
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-eloquent-ros2lifecycle-test-fixtures";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2lifecycle_test_fixtures/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "d4db48a994ab1e675a7164f8c31eb455d92029e200c96998673ab9f56e0b406c";
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
