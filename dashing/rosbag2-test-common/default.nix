
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcutils, ament-lint-common, ament-cmake, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-test-common";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_test_common/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "c31640cc3e734922c5ba1fecaec0bac019de8f67664c1037901ea026d2225bd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp rcutils ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Commonly used test helper classes and fixtures for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
