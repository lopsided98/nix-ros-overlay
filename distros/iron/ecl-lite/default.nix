
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-config, ecl-converters-lite, ecl-errors, ecl-io, ecl-sigslots-lite, ecl-time-lite }:
buildRosPackage {
  pname = "ros-iron-ecl-lite";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/iron/ecl_lite/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "20cca16fb8b4a81cd71a1fb86aada2eec61070ab0bc65830bd6b98718b09cc99";
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
