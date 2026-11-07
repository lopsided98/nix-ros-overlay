
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, gtest }:
buildRosPackage {
  pname = "ros-humble-navmap-core";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/humble/navmap_core/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "af2948367f615537d3e646b9ddb9d21f75da36eeb9fcfbce6777610b5ea9c59b";
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
