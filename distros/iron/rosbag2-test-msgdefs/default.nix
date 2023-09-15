
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-iron-rosbag2-test-msgdefs";
  version = "0.22.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_test_msgdefs/0.22.3-1.tar.gz";
    name = "0.22.3-1.tar.gz";
    sha256 = "5244c76db4404082f98801eedcd4c385f7a0c26c4d8efa08cd750f7f6d8cb9d5";
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
