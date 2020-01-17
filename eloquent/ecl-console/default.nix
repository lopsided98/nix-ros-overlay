
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-console";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_console/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "f2fa32ecff2ac3444b2c88b1dc15ab5987acf49fffa56909a29e3b1fc18e5dbe";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
