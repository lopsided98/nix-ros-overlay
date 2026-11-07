
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, gtest }:
buildRosPackage {
  pname = "ros-jazzy-navmap-core";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_core/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "7a1c3209c8ec6764d06e7d428f7b8f56bfd25d9a6500a9bb317d497e428a0277";
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
