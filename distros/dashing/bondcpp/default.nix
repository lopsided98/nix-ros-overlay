
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bond, rclcpp, rclcpp-lifecycle, smclib, utillinux }:
buildRosPackage {
  pname = "ros-dashing-bondcpp";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/dashing/bondcpp/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d3d04978c7615ad8a972815a80c284421cb55a0c7c2ae4008bd106c0cbc11059";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bond rclcpp rclcpp-lifecycle smclib utillinux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
