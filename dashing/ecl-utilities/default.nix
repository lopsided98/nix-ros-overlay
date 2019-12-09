
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ecl-mpl, ecl-concepts, ament-cmake-gtest, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-utilities";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_utilities/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "fef58ba3dd2d0fa5c6af0f980ace559dbdb7782dc4f8b9e43ae675a8958526fb";
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
