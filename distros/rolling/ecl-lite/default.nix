
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-config, ecl-converters-lite, ecl-errors, ecl-io, ecl-sigslots-lite, ecl-time-lite }:
buildRosPackage {
  pname = "ros-rolling-ecl-lite";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_lite/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "beb1e706a96b8d2d38b4994484a320e888f43cb689ad225472b0b4b941e7e7bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-config ecl-converters-lite ecl-errors ecl-io ecl-sigslots-lite ecl-time-lite ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Libraries and utilities for embedded and low-level linux development.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
