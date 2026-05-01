
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-converters, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-formatters";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_formatters/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "cc771ef57a771b9773431c479a818f86adf2ddfa24184b2dee2234548ddfcf61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-converters ecl-exceptions ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The formatters here simply format various input types to a specified
   text format. They can be used with most streaming types (including both
   ecl and stl streams).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
