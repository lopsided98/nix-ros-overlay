
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bond, bondcpp, builtin-interfaces, pkg-config, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, std-msgs, util-linux }:
buildRosPackage {
  pname = "ros-rolling-test-bond";
  version = "4.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/rolling/test_bond/4.0.0-4.tar.gz";
    name = "4.0.0-4.tar.gz";
    sha256 = "4a9f07d05705a9303fc31edaab5fafdc027c1a129fdf2e6f7b11b86863d660e0";
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
