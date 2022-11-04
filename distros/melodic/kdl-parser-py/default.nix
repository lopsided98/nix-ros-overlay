
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-orocos-kdl, pythonPackages, rostest, urdfdom-py }:
buildRosPackage {
  pname = "ros-melodic-kdl-parser-py";
  version = "1.13.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/melodic/kdl_parser_py/1.13.3-1.tar.gz";
    name = "1.13.3-1.tar.gz";
    sha256 = "5463332e38a5d3483f6dd76859eac55d39560a019eddb02709a04adbd98490b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg pythonPackages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python-orocos-kdl urdfdom-py ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg pythonPackages.setuptools ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser_py</tt> provides Python tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
