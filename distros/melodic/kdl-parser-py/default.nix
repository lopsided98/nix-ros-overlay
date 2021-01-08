
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, python-orocos-kdl, pythonPackages, rostest, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-melodic-kdl-parser-py";
  version = "1.13.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/melodic/kdl_parser_py/1.13.1-0.tar.gz";
    name = "1.13.1-0.tar.gz";
    sha256 = "66da27c1d53a445cc5334768a54a2f792df8c46475fe24a91ff486675082c86a";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ orocos-kdl python-orocos-kdl urdf urdfdom-py ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser_py</tt> provides Python tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
