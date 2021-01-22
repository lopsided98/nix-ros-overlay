
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-kinetic-ecl-math";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_math/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "855c4727088c139afe858c21c6b4087f1a6505f6d96b7a41d1e9affb4610fc49";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-license ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides simple support to cmath, filling in holes
    or redefining in a c++ formulation where desirable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
