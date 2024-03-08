
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bond, pkg-config, rclcpp, rclcpp-lifecycle, smclib, util-linux }:
buildRosPackage {
  pname = "ros-rolling-bondcpp";
  version = "4.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/rolling/bondcpp/4.0.0-4.tar.gz";
    name = "4.0.0-4.tar.gz";
    sha256 = "b53dd873186805aebf9e2871abfe03a9ddbf9fa8961704a9b7d7da6fc337837c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bond rclcpp rclcpp-lifecycle smclib util-linux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
