
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-rolling-ecl-concepts";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_concepts/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "7c8ef9f61c9de97e253a1dd6b60ed1ac744eb5f83acb11d345339a7b00b64278";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Introduces a compile time concept checking mechanism that can be used
     most commonly to check for required functionality when passing
     template arguments.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
