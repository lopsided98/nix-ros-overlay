
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-rolling-ecl-concepts";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_concepts/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "7e5bb980ef7d61c936dd7fc84ec492c00020fc6df5a489eca6e77054bbcc303c";
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
