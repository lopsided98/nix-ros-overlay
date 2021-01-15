
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-plugins, hector-gazebo-thermal-camera, hector-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_gazebo/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "067a5de59e3424a72806d6fde15c758d7a902568670ecbcce0b52dd532352b37";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins hector-gazebo-thermal-camera hector-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo provides packages related to to simulation of robots using gazebo (gazebo plugins, world files etc.)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
