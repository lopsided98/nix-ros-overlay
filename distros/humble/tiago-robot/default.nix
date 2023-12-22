
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-bringup, tiago-controller-configuration, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-robot";
  version = "4.0.27-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_robot/4.0.27-1.tar.gz";
    name = "4.0.27-1.tar.gz";
    sha256 = "13231f3d87ab94cc116c59dbb036775a67cb1ce01a1318e6611fe4606789547d";
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
