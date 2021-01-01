
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rostest, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-kdl-parser-py";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/noetic/kdl_parser_py/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "a5d621fcd4752eec65b43af22543b33c9bc47b513438d8285ac51fd61b16602e";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.pykdl urdfdom-py ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg python3Packages.setuptools ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser_py</tt> provides Python tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
