
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bond, bondcpp, builtin-interfaces, pkg-config, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, std-msgs, util-linux }:
buildRosPackage {
  pname = "ros-galactic-test-bond";
  version = "3.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/galactic/test_bond/3.0.1-4.tar.gz";
    name = "3.0.1-4.tar.gz";
    sha256 = "5c45b3e63b1e15461bde0e88d313cf864f54b60ada2d236c48c20afa44806bf4";
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
