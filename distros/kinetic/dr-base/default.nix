
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dr-cmake }:
buildRosPackage {
  pname = "ros-kinetic-dr-base";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/delftrobotics/dr_base-release/archive/release/kinetic/dr_base/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "3458015b4fdcd90adaa71b2d7202a413518ee58b883d076418db654dce93b3f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dr-cmake ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Delft Robotics base dependencies.'';
    license = with lib.licenses; [ asl20 ];
  };
}
