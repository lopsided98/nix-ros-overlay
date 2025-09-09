
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-kilted-ecl-math";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/kilted/ecl_math/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "384fc5bd399d149460aab870e50928a4c1f2b98ad47f419cfdd8c31edd3b2bf8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package provides simple support to cmath, filling in holes
    or redefining in a c++ formulation where desirable.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
