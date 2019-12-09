
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, rostest, urdfdom-headers, urdf, cmake-modules, catkin, tinyxml, roscpp, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-kdl-parser";
  version = "1.12.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/kinetic/kdl_parser/1.12.11-0.tar.gz";
    name = "1.12.11-0.tar.gz";
    sha256 = "198efeb1ded4f470492830c7ebd382798589a9cce96a86ce0bfc6c7b32617c8e";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl urdfdom-headers urdf cmake-modules tinyxml rosconsole ];
  checkInputs = [ rostest roscpp ];
  propagatedBuildInputs = [ orocos-kdl urdfdom-headers urdf tinyxml rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
