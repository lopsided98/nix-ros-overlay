
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosconsole, orocos-kdl, catkin, tinyxml, rostest, urdfdom-headers, urdf, tinyxml-2, roscpp }:
buildRosPackage {
  pname = "ros-melodic-kdl-parser";
  version = "1.13.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/kdl_parser-release/archive/release/melodic/kdl_parser/1.13.1-0.tar.gz;
    sha256 = "5931eb562bb310633fedf3c2e40b435cfa6a8d25caddb4077c04932c66c2a8a9";
  };

  checkInputs = [ rostest roscpp ];
  propagatedBuildInputs = [ urdfdom-headers urdf orocos-kdl rosconsole tinyxml-2 tinyxml ];
  nativeBuildInputs = [ urdfdom-headers urdf orocos-kdl cmake-modules rosconsole tinyxml-2 catkin tinyxml ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    #license = lib.licenses.BSD;
  };
}
