
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-bringup, tiago-controller-configuration, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-robot";
  version = "4.18.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_robot/4.18.0-1.tar.gz";
    name = "4.18.0-1.tar.gz";
    sha256 = "451b3f0d76cfcc7dce7cc7f7568f8900ff42a49f84489f0c349913eee2220435";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-bringup tiago-controller-configuration tiago-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description and controller configuration of TIAGo";
    license = with lib.licenses; [ asl20 ];
  };
}
