
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, pmb2-2dnav }:
buildRosPackage {
  pname = "ros-humble-tiago-2dnav";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_2dnav/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "55a10605194143d22212f4c7447125392d3a6187800474758423bd95a677e4fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal pmb2-2dnav ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''TIAGo-specific launch files needed to run navigation on a TIAGo robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
