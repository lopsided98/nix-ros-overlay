
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-lyrical-ecl-concepts";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_concepts/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "d009661e272e5e60abeec00ae8cd8931f464624f2f253189aec83b8647644953";
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
