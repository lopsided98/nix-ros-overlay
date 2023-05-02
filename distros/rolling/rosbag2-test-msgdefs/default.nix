
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-test-msgdefs";
  version = "0.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_test_msgdefs/0.23.0-1.tar.gz";
    name = "0.23.0-1.tar.gz";
    sha256 = "3b2013dd8f969c2b394efe627582ed2dcaa646949bcc46a6e6154b8eda7dcb05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''message definition test fixtures for rosbag2 schema recording'';
    license = with lib.licenses; [ asl20 ];
  };
}
