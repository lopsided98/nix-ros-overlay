
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-test-msgdefs";
  version = "0.26.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_test_msgdefs/0.26.7-1.tar.gz";
    name = "0.26.7-1.tar.gz";
    sha256 = "ad0144f6a0079e14d28aa650a6a9ca2b129ba6d7e6c8c5f0daab4c07bd91b12f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "message definition test fixtures for rosbag2 schema recording";
    license = with lib.licenses; [ asl20 ];
  };
}
