
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-iron-kobuki-core";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_core-release/archive/release/iron/kobuki_core/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "0d2c716c94165ca7efec65856f6dea834d6a464a6ce176302b5c928b52e89bbe";
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
