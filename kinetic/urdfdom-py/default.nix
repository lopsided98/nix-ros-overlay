
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, pythonPackages, catkin }:
buildRosPackage {
  pname = "ros-kinetic-urdfdom-py";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/kinetic/urdfdom_py/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "227ecfa29755182798418037715d3467c7879788669f1c1b8b999b4512e8988d";
  };

  buildType = "catkin";
  buildInputs = [ python ];
  propagatedBuildInputs = [ pythonPackages.lxml python catkin ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
