
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ament-lint-auto, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-filesystem";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_filesystem/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "d4da8e875c48a01d3d0ab1256364b280900eb33f98e580e3e44f2c0c89004555";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Cross platform filesystem utilities (until c++11 makes its way in).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
