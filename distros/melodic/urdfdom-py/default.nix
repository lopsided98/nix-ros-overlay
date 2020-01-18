
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-urdfdom-py";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/melodic/urdfdom_py/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "c81a72fcf704300f049e61307f657235ae499bab71460f45d72fd54cacc53e40";
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
