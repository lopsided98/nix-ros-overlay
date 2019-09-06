
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-ecl-build";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/crystal/ecl_build/1.0.1-1.tar.gz;
    sha256 = "ab906dc70d7f2b7e3a145e192387984a328e0cea93c4cc28f73b6701c7a089d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
