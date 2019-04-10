
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, python-orocos-kdl, catkin, pythonPackages, rostest, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-lunar-kdl-parser-py";
  version = "1.12.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/kdl_parser-release/archive/release/lunar/kdl_parser_py/1.12.11-0.tar.gz;
    sha256 = "0dad7b445811482ef87598e587c266c4a2a06c254254bdab97b3f2b843fe8119";
  };

  buildInputs = [ urdf orocos-kdl ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python-orocos-kdl urdf orocos-kdl urdfdom-py ];
  nativeBuildInputs = [ pythonPackages.catkin-pkg catkin ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser_py</tt> provides Python tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    #license = lib.licenses.BSD;
  };
}
