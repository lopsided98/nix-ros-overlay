
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-license, ecl-type-traits, ament-cmake-ros, ament-lint-auto, ecl-linear-algebra, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-crystal-ecl-statistics";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_statistics/1.0.1-0.tar.gz;
    sha256 = "a27f8fd665f798bb50774cf81cd42fa8139d3388c9df67db53d3e616144deba1";
  };

  buildInputs = [ ecl-build ecl-license ecl-type-traits ecl-linear-algebra ecl-config ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-license ecl-type-traits ecl-linear-algebra ecl-config ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
