
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-rolling-kobuki-core";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_core-release/archive/release/rolling/kobuki_core/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "b8fc55dc9d6f2cf561b539b26dc9fcd4160463411c096dff3028d86aa5ef1431";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-config ecl-console ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-threads ecl-time ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Pure C++ driver library for Kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
