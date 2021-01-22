
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, hardware-interface, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-controller-interface";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/controller_interface/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "100e52f0b2c977b438b8d46a1c3a343fe1794f5ab45891ffecac71dc1656992f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
