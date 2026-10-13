
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, gtest }:
buildRosPackage {
  pname = "ros-jazzy-navmap-core";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_core/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "a9a6238310dadc373765ea08d4c95c7c1777fa447ec0f8b7390c1fe3db17533a";
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
