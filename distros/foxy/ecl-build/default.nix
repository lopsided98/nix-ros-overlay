
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-foxy-ecl-build";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/foxy/ecl_build/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "214ae9d32b18abc87968e4d75e9dc444bfffd139b4524ea3ed072544ddcfe5e8";
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
