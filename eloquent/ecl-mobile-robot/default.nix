
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-linear-algebra, ecl-formatters, ecl-geometry, ecl-license, ament-lint-common, ecl-errors, ament-cmake-gtest, ecl-math, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-ecl-mobile-robot";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_mobile_robot/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "e12835c67f100c89fa1a19d34dd61bc33b4171d6ad3ff66c0f366c430bbdcf4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-formatters ecl-geometry ecl-license ecl-errors ecl-math ecl-build ecl-linear-algebra ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-formatters ecl-license ecl-geometry ecl-errors ecl-math ecl-build ecl-linear-algebra ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
