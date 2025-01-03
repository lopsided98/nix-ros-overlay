
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-rolling-ecl-utilities";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_utilities/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "f28388642da8358bd9db9fe74ac0de0aabb1ced958a42cff5d703700a7266c2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-concepts ecl-license ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Includes various supporting tools and utilities for c++ programming.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
