
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-iron-rosbag2-test-msgdefs";
  version = "0.22.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_test_msgdefs/0.22.6-1.tar.gz";
    name = "0.22.6-1.tar.gz";
    sha256 = "8b2303425a162a168af98e2433551c741bffe6ebc323abc8055c4107e5e3520d";
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
