
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, ament-lint-common, ament-cmake-gtest, ecl-geometry, ecl-build, ecl-license, ecl-errors, ecl-math, ament-cmake-ros, ament-lint-auto, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-dashing-ecl-mobile-robot";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_mobile_robot/1.0.4-1.tar.gz;
    sha256 = "51ae2ab143447a01c00156ab68cf5bce0ea1d8d8d1ede4e75ca1dedbb6f8b20e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-formatters ecl-geometry ecl-build ecl-license ecl-errors ecl-math ecl-linear-algebra ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-formatters ecl-geometry ecl-build ecl-license ecl-errors ecl-math ecl-linear-algebra ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
