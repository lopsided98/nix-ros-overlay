
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ecl-mpl, ecl-concepts, ament-cmake-gtest, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-ecl-utilities";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_utilities/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "6386cae44f3440f1debeeecfd29d47a0303bfed9756fe0997ddc95628892583c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-mpl ecl-concepts ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-mpl ecl-concepts ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Includes various supporting tools and utilities for c++ programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
