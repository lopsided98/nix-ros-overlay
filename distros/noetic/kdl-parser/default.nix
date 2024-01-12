
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, orocos-kdl, rosconsole, roscpp, rostest, tinyxml, tinyxml-2, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-kdl-parser";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/noetic/kdl_parser/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "a7236d3f21524007defe5bfc596e71b2b6febaebda9c991bbb79a8a7d348865d";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
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
