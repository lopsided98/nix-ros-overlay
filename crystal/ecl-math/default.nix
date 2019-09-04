
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-license, ecl-type-traits, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-math";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_math/1.0.1-0.tar.gz;
    sha256 = "34a913f20b96c7a81741ede0f5af6b280089f100b273304efc328a9a2d738ae4";
  };

  buildInputs = [ ecl-license ecl-type-traits ecl-build ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides simple support to cmath, filling in holes
    or redefining in a c++ formulation where desirable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
