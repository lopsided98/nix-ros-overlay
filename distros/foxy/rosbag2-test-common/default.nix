
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-test-common";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_test_common/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "8ea22434ca295379faf302abaa1f1b8db58419cb2592ca1ebef9b92af1732ca5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Commonly used test helper classes and fixtures for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
