
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, joy-linux, joy-teleop, kangaroo-controller-configuration, kangaroo-description, play-motion2, play-motion2-cli, twist-mux }:
buildRosPackage {
  pname = "ros-humble-kangaroo-bringup";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_robot-release/archive/release/humble/kangaroo_bringup/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "a0eb6620cee6ebbe878ee55928d75fae8efd0bb8cfd50f3e49c57783dff1f5ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator joy-linux joy-teleop kangaroo-controller-configuration kangaroo-description play-motion2 play-motion2-cli twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The kangaroo_bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
