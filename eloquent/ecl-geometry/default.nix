
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-formatters, ecl-license, ecl-type-traits, ament-lint-common, ament-lint-auto, ecl-containers, ecl-exceptions, ecl-mpl, ament-cmake-gtest, ecl-config, ecl-math, ecl-build, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-eloquent-ecl-geometry";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_geometry/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "1cad12be6a24ea610585b4956e8b9a36ed3dc3dafa3df4c1b2e447fd4176a4c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-formatters ecl-license ecl-type-traits ecl-containers ecl-exceptions ecl-mpl ecl-config ecl-math ecl-build ecl-linear-algebra ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-formatters ecl-license ecl-type-traits ecl-containers ecl-exceptions ecl-mpl ecl-config ecl-math ecl-build ecl-linear-algebra ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Any tools relating to mathematical geometry.
     Primarily featuring polynomials and interpolations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
