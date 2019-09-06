
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-exceptions, ecl-containers, ecl-license, ecl-type-traits, ecl-math, ament-cmake-ros, ament-lint-auto, ecl-linear-algebra, ecl-config, ecl-mpl }:
buildRosPackage rec {
  pname = "ros-dashing-ecl-geometry";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_geometry/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "b33380e43f2252bfd0b46456fd3a0dbfec5348412b3f8f99ec355616bff13865";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-formatters ecl-build ecl-exceptions ecl-containers ecl-license ecl-type-traits ecl-math ecl-linear-algebra ecl-config ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-formatters ecl-build ecl-exceptions ecl-containers ecl-license ecl-type-traits ecl-math ecl-linear-algebra ecl-config ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Any tools relating to mathematical geometry.
     Primarily featuring polynomials and interpolations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
