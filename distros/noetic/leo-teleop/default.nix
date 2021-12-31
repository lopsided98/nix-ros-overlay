
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-noetic-leo-teleop";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_teleop/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "c4affcef4833c40698162fee458cf18a87b619515ec1fca4da4aa759b00f27ba";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for Leo Rover teleoperation'';
    license = with lib.licenses; [ mit ];
  };
}
