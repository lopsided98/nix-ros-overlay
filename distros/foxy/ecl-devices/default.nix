
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-containers, ecl-errors, ecl-license, ecl-mpl, ecl-threads, ecl-type-traits, ecl-utilities }:
buildRosPackage {
  pname = "ros-foxy-ecl-devices";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_devices/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "b89d68fef5d3f0358db7e8ed79da06b43fdfc1815f711153484d6fd84be908c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-containers ecl-errors ecl-license ecl-mpl ecl-threads ecl-type-traits ecl-utilities ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
