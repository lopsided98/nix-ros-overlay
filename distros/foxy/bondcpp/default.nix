
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bond, rclcpp, rclcpp-lifecycle, smclib, utillinux }:
buildRosPackage {
  pname = "ros-foxy-bondcpp";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/foxy/bondcpp/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9cf5b6d9bb60b7aa21f0c4c6397f237ed6d6414efd3f71f656733de00eb3b72f";
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
