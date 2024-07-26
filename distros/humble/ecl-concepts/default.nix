
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-humble-ecl-concepts";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_concepts/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "7d3dbbe8831c788186569865d89c4fde5480403950f1b3cd127b2d741333a872";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Introduces a compile time concept checking mechanism that can be used
     most commonly to check for required functionality when passing
     template arguments.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
