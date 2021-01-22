
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, hardware-interface, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-test-robot-hardware";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/test_robot_hardware/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "fc2d4bac288236df7b1c6c9f1b9593d148da12706dd68d602a4cb554824c4067";
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
