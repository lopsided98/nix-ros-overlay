
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-humble-ecl-math";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_math/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "0a3846a2fcd814bb5f6f69da6e44ca10420ecc9686990c93caf174e1f3716df6";
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
