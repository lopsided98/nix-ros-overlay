
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-type-traits, ament-lint-common, ament-lint-auto, ecl-errors, ecl-containers, ecl-utilities, ecl-mpl, ecl-threads, ecl-config, ecl-build, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-ecl-devices";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_devices/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "43e2d52f36e0f1e9104395fe300a6c79edd230dc2c5767dc9a9141743176deda";
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
