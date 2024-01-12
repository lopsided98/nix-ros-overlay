
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-config, ecl-converters-lite, ecl-errors, ecl-io, ecl-sigslots-lite, ecl-time-lite }:
buildRosPackage {
  pname = "ros-rolling-ecl-lite";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_lite/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "62c843f681efa4219b541633a23658150018124655c493771959a368389d41a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-config ecl-converters-lite ecl-errors ecl-io ecl-sigslots-lite ecl-time-lite ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
