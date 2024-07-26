
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bond, pkg-config, rclcpp, rclcpp-lifecycle, smclib, util-linux }:
buildRosPackage {
  pname = "ros-jazzy-bondcpp";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/jazzy/bondcpp/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "f515b252bd5684fe747698d658ebe37aa417301dcefad1516b8437196bcbd9b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bond rclcpp rclcpp-lifecycle smclib util-linux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ implementation of bond, a mechanism for checking when
    another process has terminated.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
