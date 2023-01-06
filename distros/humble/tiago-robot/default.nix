
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-bringup, tiago-controller-configuration, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-robot";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_robot/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "66e6fda09df3afc1e804d6b80bd6534b1b34c798b00a9be3590ca2a321cefdd2";
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
