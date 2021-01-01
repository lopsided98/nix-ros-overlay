
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, hardware-interface, rcutils }:
buildRosPackage {
  pname = "ros-dashing-test-robot-hardware";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/dashing/test_robot_hardware/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "57f0dee22c810d9e65c9f1888e0e164fee8536b82b56c669bfd41ba4912154df";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of test_robot_hardware'';
    license = with lib.licenses; [ asl20 ];
  };
}
