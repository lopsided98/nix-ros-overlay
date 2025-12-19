
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-2dnav }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-2dnav";
  version = "2.13.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_2dnav/2.13.3-1.tar.gz";
    name = "2.13.3-1.tar.gz";
    sha256 = "fb39e7b1bc6a41f1979b5fb22d8443870a7b08e08fec4aef1187ff9710dd33f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ omni-base-2dnav ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "tiago pro-specific launch files needed to run navigation on the tiago_pro robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
