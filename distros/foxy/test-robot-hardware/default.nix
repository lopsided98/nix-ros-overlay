
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, hardware-interface, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-test-robot-hardware";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/bmagyar/ros2_control-release/archive/release/foxy/test_robot_hardware/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "4ee0e598bad9b11524dcf8269c17bbcab325f1640e604f5dd8dfd33157d598c4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of test_robot_hardware'';
    license = with lib.licenses; [ asl20 ];
  };
}
