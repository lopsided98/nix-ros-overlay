
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-build";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/rolling/ecl_build/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "8bc1ebf81b7a3c6ebd840f567cca6d98b5ce3fdfe3c1f3098ff0388fa037cdfc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
