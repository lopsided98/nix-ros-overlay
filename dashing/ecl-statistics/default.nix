
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-license, ecl-type-traits, ament-cmake-ros, ament-lint-auto, ecl-linear-algebra, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-dashing-ecl-statistics";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_statistics/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "cadc1d1d8133818b12e44b76c4c2cd2bf22ed557736f9a979afffc438d81207f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ecl-license ecl-type-traits ecl-linear-algebra ecl-config ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-license ecl-type-traits ecl-linear-algebra ecl-config ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
