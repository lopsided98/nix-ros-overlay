
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, gtest }:
buildRosPackage {
  pname = "ros-lyrical-navmap-core";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/lyrical/navmap_core/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "cb5581af6eecdff960dd7e54c45bdf5eed31aca7425d0ea494f5455273379f42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core C++ library for NavMap.";
    license = with lib.licenses; [ asl20 ];
  };
}
