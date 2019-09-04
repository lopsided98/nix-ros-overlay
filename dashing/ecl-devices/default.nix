
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-utilities, ament-lint-common, ament-cmake-gtest, ecl-threads, ecl-containers, ecl-build, ecl-license, ecl-errors, ecl-type-traits, ament-cmake-ros, ament-lint-auto, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-dashing-ecl-devices";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_devices/1.0.4-1.tar.gz;
    sha256 = "43e2d52f36e0f1e9104395fe300a6c79edd230dc2c5767dc9a9141743176deda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-utilities ecl-threads ecl-build ecl-containers ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-utilities ecl-threads ecl-containers ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
