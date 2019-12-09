
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-linear-algebra, ecl-license, ecl-type-traits, ament-lint-common, ecl-mpl, ament-cmake-gtest, ecl-config, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-statistics";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_statistics/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "a27f8fd665f798bb50774cf81cd42fa8139d3388c9df67db53d3e616144deba1";
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
