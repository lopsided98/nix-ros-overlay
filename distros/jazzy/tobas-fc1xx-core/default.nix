
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx-core";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx_core/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "438fff29e615b5f722fa776f87c638188f1b6b7d7b3753c0a8bc5133e3508185";
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
