
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-linear-algebra, ecl-license, ecl-type-traits, ament-lint-common, ecl-mpl, ament-cmake-gtest, ecl-config, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-statistics";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_statistics/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "cadc1d1d8133818b12e44b76c4c2cd2bf22ed557736f9a979afffc438d81207f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-type-traits ecl-mpl ecl-config ecl-build ecl-linear-algebra ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ecl-mpl ecl-config ecl-build ecl-linear-algebra ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
