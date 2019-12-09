
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-type-traits, ament-lint-common, ament-lint-auto, ecl-errors, ecl-containers, ecl-utilities, ecl-mpl, ecl-threads, ecl-config, ecl-build, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-ecl-devices";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_devices/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "ffae28dfbfa9aecbac3ba63f19bb3f54bdfbbe7cebf4c5e8dbff5609ec7c0945";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-type-traits ecl-errors ecl-containers ecl-utilities ecl-mpl ecl-threads ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ecl-errors ecl-containers ecl-utilities ecl-mpl ecl-threads ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
