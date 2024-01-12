
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-converters, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-iron-ecl-formatters";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/iron/ecl_formatters/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "f3b1767480003de90b59bf96d8cc13c19779ab4110a0d3dca41567cebcb13b6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-converters ecl-exceptions ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The formatters here simply format various input types to a specified
   text format. They can be used with most streaming types (including both
   ecl and stl streams).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
