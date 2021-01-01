
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bond, bondcpp, builtin-interfaces, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, std-msgs, utillinux }:
buildRosPackage {
  pname = "ros-dashing-test-bond";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/dashing/test_bond/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a0a172654b7606d48c7b063e3c2eee433440fe6457f20148424f11bb420e4fcf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-lifecycle ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common bond bondcpp rclcpp utillinux ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''Contains tests for [[bond]], including tests for [[bondcpp]].'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
