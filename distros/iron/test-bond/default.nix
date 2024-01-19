
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bond, bondcpp, builtin-interfaces, pkg-config, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, std-msgs, util-linux }:
buildRosPackage {
  pname = "ros-iron-test-bond";
  version = "4.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/iron/test_bond/4.0.0-4.tar.gz";
    name = "4.0.0-4.tar.gz";
    sha256 = "58a3b1e361d71e7dca247415dc402f5c24ce29de8f9a0629ad8a31063111654c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-lifecycle rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common bond bondcpp pkg-config rclcpp util-linux ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''Contains tests for [[bond]], including tests for [[bondcpp]].'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
