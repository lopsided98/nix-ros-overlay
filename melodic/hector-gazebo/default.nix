
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-thermal-camera, hector-gazebo-plugins, hector-gazebo-worlds, catkin }:
buildRosPackage {
  pname = "ros-melodic-hector-gazebo";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/melodic/hector_gazebo/0.5.1-0.tar.gz;
    sha256 = "e474b78636582cd62c773aa6f4951ee850aa2f1afb3896e93d3a171a7037287f";
  };

  propagatedBuildInputs = [ hector-gazebo-thermal-camera hector-gazebo-plugins hector-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo provides packages related to to simulation of robots using gazebo (gazebo plugins, world files etc.)'';
    #license = lib.licenses.BSD;
  };
}
