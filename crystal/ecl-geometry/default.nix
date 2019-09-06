
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-exceptions, ecl-containers, ecl-license, ecl-type-traits, ecl-math, ament-cmake-ros, ament-lint-auto, ecl-linear-algebra, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-crystal-ecl-geometry";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_geometry/1.0.1-0.tar.gz;
    sha256 = "98e1c67a4da502cf83f49ba02364bf31a341082365569700466fcb01d3f269b3";
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
