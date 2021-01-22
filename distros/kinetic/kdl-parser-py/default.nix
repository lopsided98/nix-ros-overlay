
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, python-orocos-kdl, pythonPackages, rostest, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-kinetic-kdl-parser-py";
  version = "1.12.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/kinetic/kdl_parser_py/1.12.11-0.tar.gz";
    name = "1.12.11-0.tar.gz";
    sha256 = "7c07eba81ccdfaba80d24c8d38bf14d41fcff2779250ea47f6c21143865c50dc";
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
