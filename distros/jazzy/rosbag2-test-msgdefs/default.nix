
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-test-msgdefs";
  version = "0.26.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_test_msgdefs/0.26.3-1.tar.gz";
    name = "0.26.3-1.tar.gz";
    sha256 = "4f49cf11da77581ba93d07e1955c5a23b63f20f8136382cc5b3fee87520c4d27";
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
