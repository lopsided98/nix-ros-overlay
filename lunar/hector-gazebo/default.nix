
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-thermal-camera, hector-gazebo-plugins, hector-gazebo-worlds, catkin }:
buildRosPackage {
  pname = "ros-lunar-hector-gazebo";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/lunar/hector_gazebo/0.5.1-0.tar.gz;
    sha256 = "17acd0dc3dfcd10d753734b0201f3d89fa33bc67a12e463f727af8b374fb9f90";
  };

  propagatedBuildInputs = [ hector-gazebo-thermal-camera hector-gazebo-plugins hector-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo provides packages related to to simulation of robots using gazebo (gazebo plugins, world files etc.)'';
    #license = lib.licenses.BSD;
  };
}
