
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-2dnav, pmb2-2dnav }:
buildRosPackage {
  pname = "ros-humble-tiago-2dnav";
  version = "4.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_navigation-release/archive/release/humble/tiago_2dnav/4.13.0-1.tar.gz";
    name = "4.13.0-1.tar.gz";
    sha256 = "3fbda99cf762457dd4d11fdde5652699a1f22f0f070e8745d5cf63f6438f6de2";
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
