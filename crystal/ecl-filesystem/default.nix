
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ecl-errors, ament-cmake-gtest, ecl-config, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-filesystem";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_filesystem/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "9b6fd490434d4a1a8f44f974f4f01ebfd5b6a2bef880fca7586b41d811a8aabc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-errors ecl-license ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-errors ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Cross platform filesystem utilities (until c++11 makes its way in).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
