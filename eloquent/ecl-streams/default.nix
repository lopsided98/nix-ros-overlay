
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ament-cmake-ros, ecl-license, ecl-type-traits, ament-lint-common, ecl-errors, ecl-converters, ecl-concepts, ament-cmake-gtest, ecl-devices, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-ecl-streams";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_streams/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "67a27b34e66ffce171a737e823ffc574d0d462ba77fdd15c440ee3053e814a95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-time ecl-license ecl-type-traits ecl-errors ecl-build ecl-concepts ecl-devices ecl-converters ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-time ecl-license ecl-type-traits ecl-errors ecl-concepts ecl-devices ecl-converters ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These are lightweight text streaming classes that connect to standardised
     ecl type devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
