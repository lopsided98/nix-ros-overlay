
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx-core";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx_core/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "f47eb9fde787e9bd0526c0f01537ce00752bf159214e8b8817d5332b21c6340e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-linux tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Low-level PWM, DShot, and battery drivers for FC1xx hardware.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
