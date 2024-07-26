
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-converters, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-formatters";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_formatters/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "e76226a294e0234137d0a9860d8e4857f9856eebb9cec9b7e6ae2394589c639c";
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
