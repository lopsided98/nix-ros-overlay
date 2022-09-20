
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-foxy-ecl-math";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_math/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "130441861953371a243817ffd77e56a2396082e1c5105e2b40da579fca45cae4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides simple support to cmath, filling in holes
    or redefining in a c++ formulation where desirable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
