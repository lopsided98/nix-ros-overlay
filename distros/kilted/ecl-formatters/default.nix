
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-converters, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-formatters";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/kilted/ecl_formatters/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "5977627e27e5b50a76fcb32684a10ecb00985b6d1c51e3ed69ca3328c6f48a72";
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
