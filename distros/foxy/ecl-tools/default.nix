
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-foxy-ecl-tools";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/foxy/ecl_tools/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "4a9651ff2fe597408b5c8507f16d58547ce3afa1c59a2927ab35a84577e20df4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
