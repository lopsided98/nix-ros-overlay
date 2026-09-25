
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-algorithm, tobas-linux, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx-core";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx_core/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "3f449c82a662a8bc6cdeef45ac9c24b7c98b615fb31883440ac269f855c4f0cf";
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
