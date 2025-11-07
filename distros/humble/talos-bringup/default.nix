
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, diagnostic-aggregator, joy-linux, joy-teleop, play-motion2, play-motion2-cli, talos-controller-configuration, talos-description, twist-mux }:
buildRosPackage {
  pname = "ros-humble-talos-bringup";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_bringup/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "2957a71ea48bc0bd60bee701383e7fba1a382483608961b2d0c9975da4de1109";
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
