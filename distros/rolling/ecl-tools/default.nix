
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-tools";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/rolling/ecl_tools/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "47275fac32415da49c08fd5f9b6fed0d8c2be1410e0c82109f5732bf219b8a2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools and utilities for ecl development.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
