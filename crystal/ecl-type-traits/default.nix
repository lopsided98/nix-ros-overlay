
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-license, ament-cmake-ros, ament-lint-auto, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-crystal-ecl-type-traits";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_type_traits/1.0.1-0.tar.gz;
    sha256 = "dba20da2c44d2b510db614738312ff31374fef5dee29c28efba4b1a69c7a29ff";
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
