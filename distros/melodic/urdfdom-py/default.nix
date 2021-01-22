
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-urdfdom-py";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/melodic/urdfdom_py/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "71ec45fcaee84a9e37e1706732507bc5b1b5ec2599d6222cd76648ed244295f0";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ pythonPackages.pyyaml rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
