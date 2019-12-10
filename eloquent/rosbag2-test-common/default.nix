
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-test-common";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_test_common/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "a1cd94096604f0eb0e5fdb8c69deb3dfc41bbee116a7a6b2cc4d278b9d95251f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Commonly used test helper classes and fixtures for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
