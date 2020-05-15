
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-console-util";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_console_util/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "9869c9c87fa1b5d2a8ae5ce2daa637681eb3bf26c96b88e6c5c47b655ea40c99";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
