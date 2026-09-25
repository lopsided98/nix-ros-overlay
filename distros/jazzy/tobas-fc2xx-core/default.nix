
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-algorithm, tobas-linux, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx-core";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx_core/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "32c03439d1294b056bee0b5414141d5b6d6935e888d607a782e9ceb7fb6d19bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-algorithm tobas-linux tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Low-level PWM, DShot, GPIO, and battery drivers for FC2xx hardware.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
