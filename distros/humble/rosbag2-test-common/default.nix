
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-humble-rosbag2-test-common";
  version = "0.15.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_test_common/0.15.16-1.tar.gz";
    name = "0.15.16-1.tar.gz";
    sha256 = "b07f710c0c295af1cb9374aad554b3be3f8b08df019cfb03d502e589f2ec9ae5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Commonly used test helper classes and fixtures for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
