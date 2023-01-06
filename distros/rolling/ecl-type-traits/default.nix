
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-rolling-ecl-type-traits";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/rolling/ecl_type_traits/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "22500cb148f3e37fe5dda191a8dc8c80d1474687dd97625520189f6477f5ea01";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Extends c++ type traits and implements a few more to boot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
