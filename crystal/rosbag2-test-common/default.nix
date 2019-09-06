
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gmock, rclcpp, ament-lint-auto, rcutils }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-test-common";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_test_common/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "21d43e4410570bb103acd19254d87dc584c13a77340f266b393b760568dc2a7e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gmock rclcpp ament-lint-auto rcutils ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Commonly used test helper classes and fixtures for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
