
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-humble-kobuki-core";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_core-release/archive/release/humble/kobuki_core/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "01a6fa067a7ddfac53c93f8d5fe8cddf877552d9c82ea2481b7fb1ddd144d7fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-config ecl-console ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-threads ecl-time ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Pure C++ driver library for Kobuki.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
