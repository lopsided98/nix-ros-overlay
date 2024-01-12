
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-containers, ecl-errors, ecl-license, ecl-mpl, ecl-threads, ecl-type-traits, ecl-utilities }:
buildRosPackage {
  pname = "ros-rolling-ecl-devices";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_devices/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "7c044a49ac1b6e8d811e3cf7b43f10840b35e058e1e2d3dbb85ab9cf38ea9dac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-containers ecl-errors ecl-license ecl-mpl ecl-threads ecl-type-traits ecl-utilities ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
