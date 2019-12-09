
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-config, ecl-build, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-crystal-ecl-console";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_console/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "4c6c0d24df184f7b818373d6db1e430079772dfbf33741e96bdd589259708435";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
