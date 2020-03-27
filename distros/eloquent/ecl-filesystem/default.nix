
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-filesystem";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_filesystem/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "3ecc729215faa8f78f2d242839d19f7e368b49e3fa0a5df6b6930dbf4ae223a3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Cross platform filesystem utilities (until c++11 makes its way in).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
