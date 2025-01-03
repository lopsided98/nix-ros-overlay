
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-containers, ecl-exceptions, ecl-formatters, ecl-license, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-humble-ecl-geometry";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_geometry/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "9ac60a91dd1ebd03270b2f308d75d587336d8157de239362562f3456ff0a8e2d";
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
