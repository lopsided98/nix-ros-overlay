
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-urdfdom-py";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/noetic/urdfdom_py/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "fbaedbb3631b3c3e1573db77770ab2e40ff9eeb74a7564ab8a1fbb8df5bb6ead";
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
