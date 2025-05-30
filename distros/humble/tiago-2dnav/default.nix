
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-2dnav, pmb2-2dnav }:
buildRosPackage {
  pname = "ros-humble-tiago-2dnav";
  version = "4.11.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_2dnav/4.11.0-1.tar.gz";
    name = "4.11.0-1.tar.gz";
    sha256 = "c53173bc6f4e0507fa44fbc6e9fc99228b16bc209425967208f18e4015419f8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ omni-base-2dnav pmb2-2dnav ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo-specific launch files needed to run navigation on a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
