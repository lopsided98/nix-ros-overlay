
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, joy-linux, joy-teleop, kangaroo-controller-configuration, kangaroo-description, play-motion2, play-motion2-cli, twist-mux }:
buildRosPackage {
  pname = "ros-humble-kangaroo-bringup";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_robot-release/archive/release/humble/kangaroo_bringup/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "f3f93e69c65d3c3ee4a15f704cfa10e35ca7af6e52bfab0131a8e4577702eddf";
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
