
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-cb-detector, catkin, monocam-settler, interval-intersection, joint-states-settler, urdfdom-py }:
buildRosPackage {
  pname = "ros-kinetic-calibration-launch";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration_launch/0.10.14-0.tar.gz;
    sha256 = "78a8df7a9d2745ee43a3e25336fd8e2d23c4207b0277ce649bfc2ec63c1dd702";
  };

  propagatedBuildInputs = [ joint-states-settler laser-cb-detector monocam-settler interval-intersection urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a collection of launch files that can be helpful in configuring
    the calibration stack to run on your robot.'';
    #license = lib.licenses.BSD;
  };
}
