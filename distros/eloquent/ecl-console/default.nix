
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-console";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_console/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "06e53d556a8d4a0dda1060670abd0d2738af9401f23cc8ab237212bac369999e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
