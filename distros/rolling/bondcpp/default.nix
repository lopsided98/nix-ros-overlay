
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bond, pkg-config, rclcpp, rclcpp-lifecycle, smclib, util-linux }:
buildRosPackage {
  pname = "ros-rolling-bondcpp";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/rolling/bondcpp/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "0285ae54d901ee49e3d70364364b675c3f5e61f21d187f5dc38d7ff9e1cbce9c";
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
