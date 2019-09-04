
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-license, ament-cmake-ros, ament-lint-auto, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-dashing-ecl-type-traits";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_type_traits/1.0.4-1.tar.gz;
    sha256 = "6ed2aaa2da1bafbcb1900848753f26c0d0c168a3c2926d79b296469e4be2029b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ecl-license ecl-config ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Extends c++ type traits and implements a few more to boot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
