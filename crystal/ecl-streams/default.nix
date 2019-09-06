
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ament-lint-common, ament-cmake-gtest, ecl-concepts, ecl-time, ecl-build, ecl-license, ecl-errors, ecl-type-traits, ecl-devices, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-streams";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_streams/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "06275da6301894c7d669770ca6333a60b9b0ccd0ffeee6482464fd8c1924a34e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-converters ecl-concepts ecl-time ecl-build ecl-license ecl-errors ecl-type-traits ecl-devices ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-converters ecl-concepts ecl-time ecl-license ecl-errors ecl-type-traits ecl-devices ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These are lightweight text streaming classes that connect to standardised
     ecl type devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
