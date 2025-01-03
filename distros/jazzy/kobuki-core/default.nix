
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-jazzy-kobuki-core";
  version = "1.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_core-release/archive/release/jazzy/kobuki_core/1.4.0-4.tar.gz";
    name = "1.4.0-4.tar.gz";
    sha256 = "02624c03554eea07fa3978da4b3c9460d96c43bad10ea3601e1a56712edeac92";
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
