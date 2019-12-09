
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ament-cmake-ros, ecl-license, ecl-type-traits, ament-lint-common, ecl-errors, ecl-converters, ecl-concepts, ament-cmake-gtest, ecl-devices, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-streams";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_streams/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "1501bdfa0533dd97c06f14413591b39d7df3b67ba79fc5dd056a05c8f1cead4c";
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
