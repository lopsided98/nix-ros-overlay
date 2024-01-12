
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, calibration-msgs, catkin, rosconsole, rostime }:
buildRosPackage {
  pname = "ros-noetic-settlerlib";
  version = "0.10.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/noetic/settlerlib/0.10.15-1.tar.gz";
    name = "0.10.15-1.tar.gz";
    sha256 = "c33ad16a8254c5b646874efcedcc894821ca38121916a103b29d357101ba2810";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost calibration-msgs rosconsole rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines helper functions and routines that greatly help when trying to create a settler
    for a specific sensor channel. This package is experimental and unstable.
    Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
