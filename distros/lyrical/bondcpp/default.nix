
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bond, pkg-config, rclcpp, rclcpp-lifecycle, smclib, util-linux }:
buildRosPackage {
  pname = "ros-lyrical-bondcpp";
  version = "4.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/lyrical/bondcpp/4.4.0-3.tar.gz";
    name = "4.4.0-3.tar.gz";
    sha256 = "b6af7fd30beac9fa20cf59d9ed859bd20f4147840a26c4dad8288c12e9908c62";
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
