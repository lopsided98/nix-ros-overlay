
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-urdfdom-py";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/melodic/urdfdom_py/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "333a2983d6cc779348c5874acb39b3a6912b862e8807eddbf9407739adb86291";
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
