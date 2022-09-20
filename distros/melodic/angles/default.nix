
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit }:
buildRosPackage {
  pname = "ros-melodic-angles";
  version = "1.9.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_angles_utils-release/archive/release/melodic/angles/1.9.12-1.tar.gz";
    name = "1.9.12-1.tar.gz";
    sha256 = "db7a41b9e761db8f81c749170e1b949366a0a125b50d37617a7bac34058a1a58";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a set of simple math utilities to work
        with angles. The utilities cover simple things like
        normalizing an angle and conversion between degrees and
        radians. But even if you're trying to calculate things like
        the shortest angular distance between two joint space
        positions of your robot, but the joint motion is constrained
        by joint limits, this package is what you need. The code in
        this package is stable and well tested. There are no plans for
        major changes in the near future.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
