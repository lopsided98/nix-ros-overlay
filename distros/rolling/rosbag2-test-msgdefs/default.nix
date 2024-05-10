
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-test-msgdefs";
  version = "0.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_test_msgdefs/0.27.0-1.tar.gz";
    name = "0.27.0-1.tar.gz";
    sha256 = "8c19a750ccc0713fbbbd7bd63b287f463d143a73689917f81591a13e9437ef40";
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
