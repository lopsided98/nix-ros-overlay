
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-iron-rosbag2-test-msgdefs";
  version = "0.22.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_test_msgdefs/0.22.7-1.tar.gz";
    name = "0.22.7-1.tar.gz";
    sha256 = "f3c88090b012494db5e2448e4a9ae1a9e8ae7dee21a3c6fe7e308e27dd0cc796";
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
