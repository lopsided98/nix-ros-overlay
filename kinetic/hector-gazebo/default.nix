
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-thermal-camera, hector-gazebo-plugins, hector-gazebo-worlds, catkin }:
buildRosPackage {
  pname = "ros-kinetic-hector-gazebo";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/kinetic/hector_gazebo/0.5.0-0.tar.gz;
    sha256 = "be6ee84dc26818499a8270acb80e02fd926874fafc4d6bc7c189ccc7a1f5397e";
  };

  propagatedBuildInputs = [ hector-gazebo-thermal-camera hector-gazebo-plugins hector-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo provides packages related to to simulation of robots using gazebo (gazebo plugins, world files etc.)'';
    #license = lib.licenses.BSD;
  };
}
