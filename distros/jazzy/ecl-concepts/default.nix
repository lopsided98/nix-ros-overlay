
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-jazzy-ecl-concepts";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_concepts/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "5a45db7e4bfd4bda2203e971305c30ea1f1513a9c50b4fab22251bffdc564e7b";
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
