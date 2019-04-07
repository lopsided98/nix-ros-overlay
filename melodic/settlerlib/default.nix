
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, boost, catkin, rostime, calibration-msgs }:
buildRosPackage {
  pname = "ros-melodic-settlerlib";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/melodic/settlerlib/0.10.14-0.tar.gz;
    sha256 = "795d9982aacaca98ad5750e40e707596f6a88b7f7f703ee664ebd98464d861b8";
  };

  buildInputs = [ boost rostime rosconsole calibration-msgs ];
  propagatedBuildInputs = [ boost rostime rosconsole calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines helper functions and routines that greatly help when trying to create a settler
    for a specific sensor channel. This package is experimental and unstable.
    Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
