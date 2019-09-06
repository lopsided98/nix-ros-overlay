
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-concepts, ecl-build, ecl-exceptions, ecl-license, ecl-errors, ecl-type-traits, ament-cmake-ros, ament-lint-auto, ecl-config, ecl-mpl }:
buildRosPackage rec {
  pname = "ros-dashing-ecl-converters";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_converters/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "7a194e978f90284025c75407647eea2c0c44542f633d605c1ed1e717055b37b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-concepts ecl-build ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-concepts ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Some fast/convenient type converters, mostly for char strings or strings.
     These are not really fully fleshed out, alot of them could use the addition for
     the whole range of fundamental types (e.g. all integers, not just int, unsigned int).

     They will come as the need arises.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
