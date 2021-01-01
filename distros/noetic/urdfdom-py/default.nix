
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-urdfdom-py";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/noetic/urdfdom_py/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "47ce495037d7c5f0203508ff7f624957607c80c8dcede64fb308a04b755f0028";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python3Packages.pyyaml rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
