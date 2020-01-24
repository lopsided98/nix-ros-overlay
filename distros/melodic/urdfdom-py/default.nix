
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-urdfdom-py";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/melodic/urdfdom_py/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "c36e2459b2604566af7d5b9a212e156303a7a4094518dd62e2485d76a98b4db6";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ pythonPackages.lxml pythonPackages.pyyaml rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
