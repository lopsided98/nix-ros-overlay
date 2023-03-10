
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-bringup, tiago-controller-configuration, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-robot";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_robot/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "3f52e1f09b795ea2c3e6865cfff11f9d6d99959d3f84ec12e1cbffb22cff9281";
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
