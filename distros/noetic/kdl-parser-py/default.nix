
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rostest, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-kdl-parser-py";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/noetic/kdl_parser_py/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "21e02913bc61d60fb30d14533c9073c4ce350f6c8d642e40301bca23c6df351c";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg python3Packages.setuptools ];
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
