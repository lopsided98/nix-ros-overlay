
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, diagnostic-aggregator, joy-linux, joy-teleop, play-motion2, play-motion2-cli, talos-controller-configuration, talos-description, twist-mux }:
buildRosPackage {
  pname = "ros-humble-talos-bringup";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_bringup/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "9afc9ef5541b41dea8d8a04048e58d761ef8d30d42872e123d348e9aa622939a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator joy-linux joy-teleop play-motion2 play-motion2-cli talos-controller-configuration talos-description twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
