
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-linear-algebra, ecl-formatters, ecl-geometry, ecl-license, ament-lint-common, ecl-errors, ament-cmake-gtest, ecl-math, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-mobile-robot";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_mobile_robot/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "6f5823539daecf82dd626c3bb0737a5e86d5726019d272171217fd7115890500";
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
