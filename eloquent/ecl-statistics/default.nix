
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-linear-algebra, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-eloquent-ecl-statistics";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_statistics/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "b64bc3d385cc4bfe402988120e29007cabb1fb0452857d96a58d39bfe5a649b6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ecl-linear-algebra ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
