
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-kilted-ecl-concepts";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/kilted/ecl_concepts/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "136dd093d3612f44fe5cd4eed058f3d22bf9692286b73effeef47e1244e82813";
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
