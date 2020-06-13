
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-urdfdom-py";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/noetic/urdfdom_py/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "b73b5c60376573171de75888399835d6845d07bbd70f4d7065b93d30fb994ef1";
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
