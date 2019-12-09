
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ecl-mpl, ament-cmake-gtest, ecl-config, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-type-traits";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_type_traits/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "6ed2aaa2da1bafbcb1900848753f26c0d0c168a3c2926d79b296469e4be2029b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-mpl ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-mpl ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Extends c++ type traits and implements a few more to boot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
