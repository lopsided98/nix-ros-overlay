
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-kilted-kobuki-core";
  version = "1.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_core-release/archive/release/kilted/kobuki_core/1.4.0-4.tar.gz";
    name = "1.4.0-4.tar.gz";
    sha256 = "cb0a5d6c5a341832c93027a734bfc4b67e707cc51d9b9de4baacc27df4c253d1";
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
