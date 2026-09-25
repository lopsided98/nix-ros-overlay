
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx-core";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx_core/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "bd6c2437d783210f7aca3bed6bfc5e617881f03b118a75c556abf31333d0cb62";
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
