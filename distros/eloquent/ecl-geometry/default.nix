
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-containers, ecl-exceptions, ecl-formatters, ecl-license, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-eloquent-ecl-geometry";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_geometry/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "0b843df09ad92e200353e8775c4b1aa44db9bba4c62937b74fdcd0ac807807f6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-containers ecl-exceptions ecl-formatters ecl-license ecl-linear-algebra ecl-math ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Any tools relating to mathematical geometry.
     Primarily featuring polynomials and interpolations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
