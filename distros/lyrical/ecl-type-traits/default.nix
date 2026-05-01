
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-lyrical-ecl-type-traits";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_type_traits/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "cdafd253a2ebcf66a170e10ed3ad43748414b14e48c2566884227a1081d9ab24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Extends c++ type traits and implements a few more to boot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
