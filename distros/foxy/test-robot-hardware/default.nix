
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, hardware-interface, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-test-robot-hardware";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/test_robot_hardware/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9fb7e759cc970b44d2121780f9df8c167565b2a87fa314f294c8f068c754388b";
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
