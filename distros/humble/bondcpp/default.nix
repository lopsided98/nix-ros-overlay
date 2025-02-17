
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bond, pkg-config, rclcpp, rclcpp-lifecycle, smclib, util-linux }:
buildRosPackage {
  pname = "ros-humble-bondcpp";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/humble/bondcpp/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "3a8c5cb9448f042a5cf87f4b16be2c800e4591ebe9e0421303e6a3787fb78dc5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bond rclcpp rclcpp-lifecycle smclib util-linux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ implementation of bond, a mechanism for checking when
    another process has terminated.";
    license = with lib.licenses; [ bsd3 ];
  };
}
