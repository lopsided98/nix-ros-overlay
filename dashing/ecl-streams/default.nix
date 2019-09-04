
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ament-lint-common, ament-cmake-gtest, ecl-concepts, ecl-time, ecl-build, ecl-license, ecl-errors, ecl-type-traits, ecl-devices, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-streams";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_streams/1.0.4-1.tar.gz;
    sha256 = "1501bdfa0533dd97c06f14413591b39d7df3b67ba79fc5dd056a05c8f1cead4c";
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
