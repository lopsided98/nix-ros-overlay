
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-algorithm, tobas-linux, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx-core";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx_core/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "554925152dd39818288a7a851867e15d24c91dce1452f063475b593a2c264001";
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
