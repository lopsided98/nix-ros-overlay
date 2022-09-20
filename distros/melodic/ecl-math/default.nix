
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-melodic-ecl-math";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_math/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "d488ba248dce19a054e54b2054930c7120d2c383c193efc659e8c42714f77dbd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides simple support to cmath, filling in holes
    or redefining in a c++ formulation where desirable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
