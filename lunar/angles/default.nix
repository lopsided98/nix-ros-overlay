
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit }:
buildRosPackage {
  pname = "ros-lunar-angles";
  version = "1.9.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry_angles_utils-release/archive/release/lunar/angles/1.9.11-0.tar.gz;
    sha256 = "e8deedc60c1f06c276cc1cd26017bdb4a651ff60f2a542584d28f8d493f02cea";
  };

  checkInputs = [ rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a set of simple math utilities to work
        with angles. The utilities cover simple things like
        normalizing an angle and conversion between degrees and
        radians. But even if you're trying to calculate things like
        the shortest angular distance between two joinst space
        positions of your robot, but the joint motion is constrained
        by joint limits, this package is what you need. The code in
        this packge is stable and well tested. There are no plans for
        major changes in the near future.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
