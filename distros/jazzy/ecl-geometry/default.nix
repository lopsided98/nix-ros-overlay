
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-containers, ecl-exceptions, ecl-formatters, ecl-license, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-jazzy-ecl-geometry";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_geometry/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "7254c9d333e756c50bc6355ca8381e97889d08de6291c011c83b93c05b1746e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-containers ecl-exceptions ecl-formatters ecl-license ecl-linear-algebra ecl-math ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Any tools relating to mathematical geometry.
     Primarily featuring polynomials and interpolations.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
