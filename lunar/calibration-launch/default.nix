
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-cb-detector, catkin, monocam-settler, interval-intersection, joint-states-settler, urdfdom-py }:
buildRosPackage {
  pname = "ros-lunar-calibration-launch";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/calibration_launch/0.10.14-0.tar.gz;
    sha256 = "7d69d59d83c669f2f88ea660aa50f8bc6a51d0a92e0916ab2dfeb5e61174c05f";
  };

  propagatedBuildInputs = [ joint-states-settler laser-cb-detector monocam-settler interval-intersection urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a collection of launch files that can be helpful in configuring
    the calibration stack to run on your robot.'';
    #license = lib.licenses.BSD;
  };
}
