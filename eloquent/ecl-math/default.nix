
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-eloquent-ecl-math";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_math/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "74b34929a4afff2518c12714fe9d6b261cfb15d24273582b246608db15695bdc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides simple support to cmath, filling in holes
    or redefining in a c++ formulation where desirable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
