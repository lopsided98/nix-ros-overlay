
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, orocos-kdl, rosconsole, roscpp, rostest, tinyxml, tinyxml-2, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-kdl-parser";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/noetic/kdl_parser/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "f14b7ce20d5cb7c9070b3176dc0ede096744dcef6348ec4b8043a48a7687c253";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ roscpp rostest ];
  propagatedBuildInputs = [ orocos-kdl rosconsole tinyxml tinyxml-2 urdf urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
