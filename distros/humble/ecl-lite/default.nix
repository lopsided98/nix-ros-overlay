
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-config, ecl-converters-lite, ecl-errors, ecl-io, ecl-sigslots-lite, ecl-time-lite }:
buildRosPackage {
  pname = "ros-humble-ecl-lite";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/humble/ecl_lite/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "163192f076eb1e83d26aa3422ae58b216fcea34ff52e1480597b1c92bb23bf8a";
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
