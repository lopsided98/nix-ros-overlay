
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-rolling-kobuki-core";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_core-release/archive/release/rolling/kobuki_core/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "6c0c35ddb50ea1166f86838fe9335bb8ac121d4c04ae78c2b7e3baa4213a0df5";
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
