
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-bringup, tiago-controller-configuration, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-robot";
  version = "4.0.28-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_robot/4.0.28-1.tar.gz";
    name = "4.0.28-1.tar.gz";
    sha256 = "0754ae72f090de54da3df55e609ef95a1eeb41a1f470fcb977c1f152fcb98939";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-bringup tiago-controller-configuration tiago-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description and controller configuration of TIAGo'';
    license = with lib.licenses; [ asl20 ];
  };
}
