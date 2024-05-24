
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-converters, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-formatters";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_formatters/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "ced58815d769f9633d7d99d0a8a09e035b6f324fa54f28e1fcb92413e1d82c37";
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
