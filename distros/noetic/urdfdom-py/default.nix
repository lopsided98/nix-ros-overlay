
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-urdfdom-py";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/noetic/urdfdom_py/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "a6cfbfeea0b5bc7d96c4e29dd63e46da12f43799f5bb737fe3f2e0f1166a5233";
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
