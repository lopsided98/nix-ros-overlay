
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-converters, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-formatters";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_formatters/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "e86090dba6c701754b3766ba0730788612e54ca4dec26736ce007fa97825dfbc";
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
