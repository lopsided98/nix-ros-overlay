
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-utilities, ament-lint-common, ament-cmake-gtest, ecl-threads, ecl-containers, ecl-build, ecl-license, ecl-errors, ecl-type-traits, ament-cmake-ros, ament-lint-auto, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-crystal-ecl-devices";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_devices/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "83dee83518c5937165ee4506d6358e714d9cf8fce2fa05c54ab922669e22ddb1";
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
