
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-type-traits, ament-lint-common, ament-cmake-gtest, ecl-config, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-concepts";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_concepts/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "2c40dadf1d20d70d7a66e905b174d5159ca3d22bf6a474df5b155ec8e8c809d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-type-traits ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Introduces a compile time concept checking mechanism that can be used
     most commonly to check for required functionality when passing
     template arguments.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
