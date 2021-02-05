
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-plugins, hector-gazebo-thermal-camera, hector-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_gazebo/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "d98090e13ab216cd9373e37e45c2b1d036964be4ba758554a67f7a5175a96de9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins hector-gazebo-thermal-camera hector-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo provides packages related to to simulation of robots using gazebo (gazebo plugins, world files etc.)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
