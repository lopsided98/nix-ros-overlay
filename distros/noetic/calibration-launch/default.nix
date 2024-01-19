
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interval-intersection, joint-states-settler, laser-cb-detector, monocam-settler, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-calibration-launch";
  version = "0.10.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/noetic/calibration_launch/0.10.15-1.tar.gz";
    name = "0.10.15-1.tar.gz";
    sha256 = "7e5507f6f3f4762be434ed51f893ef940c17e2b4fec1397e33c7d4d2989585d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ interval-intersection joint-states-settler laser-cb-detector monocam-settler urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a collection of launch files that can be helpful in configuring
    the calibration stack to run on your robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
