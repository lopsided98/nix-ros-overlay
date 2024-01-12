
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-build";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/humble/ecl_build/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "aecccb711397a8e3185e57004bc773c78bc4b81b333edfe881c2f2d4b801c87f";
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
