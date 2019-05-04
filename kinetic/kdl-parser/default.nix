
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosconsole, orocos-kdl, catkin, tinyxml, rostest, urdfdom-headers, urdf, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-kdl-parser";
  version = "1.12.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/kdl_parser-release/archive/release/kinetic/kdl_parser/1.12.11-0.tar.gz;
    sha256 = "198efeb1ded4f470492830c7ebd382798589a9cce96a86ce0bfc6c7b32617c8e";
  };

  buildInputs = [ orocos-kdl cmake-modules rosconsole tinyxml urdfdom-headers urdf ];
  checkInputs = [ rostest roscpp ];
  propagatedBuildInputs = [ orocos-kdl rosconsole tinyxml urdfdom-headers urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
