
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-lyrical-ecl-math";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_math/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "030531bba029178fa312c41d1c3ca49671b11cb54612d06412de129f1fbfc9ea";
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
